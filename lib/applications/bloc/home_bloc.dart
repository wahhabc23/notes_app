import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/home/notes_model_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NotesModelServices _noteModelService;
  HomeBloc(this._noteModelService) : super(HomeState.initial()) {
    // get notes
    on<GetNotes>((event, emit) async {
      emit(state.copyWith(isLoading: true),);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });
    // add notes to hive
    on<AddNote>((event, emit) async {
      emit(state.copyWith(isLoading: true),);
      await _noteModelService.insertNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });

    // delete note from hive using key
    on<DeleteNote>((event, emit) async {
      emit(state.copyWith(isLoading: true),);
      await _noteModelService.deleteNote(event.id);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });

    // update note from hive
    on<UpdateNote>((event, emit) async {
      emit(state.copyWith(isLoading: true),);
      await _noteModelService.updateNote(event.note);
      final result = await _noteModelService.getNotes();
      emit(HomeState(isLoading: false, notesModelList: result));
    });
  }
}
