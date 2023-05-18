part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNotes() = GetNotes;
  const factory HomeEvent.updateNote({required NotesModel note}) = UpdateNote;
  const factory HomeEvent.addNote({required NotesModel note}) = AddNote;
  const factory HomeEvent.deleteNote({required int id}) = DeleteNote;
}
