// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
    required TResult Function(NotesModel note) updateNote,
    required TResult Function(NotesModel note) addNote,
    required TResult Function(int id) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
    TResult? Function(NotesModel note)? updateNote,
    TResult? Function(NotesModel note)? addNote,
    TResult? Function(int id)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    TResult Function(NotesModel note)? updateNote,
    TResult Function(NotesModel note)? addNote,
    TResult Function(int id)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(UpdateNote value) updateNote,
    required TResult Function(AddNote value) addNote,
    required TResult Function(DeleteNote value) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(UpdateNote value)? updateNote,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(DeleteNote value)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(UpdateNote value)? updateNote,
    TResult Function(AddNote value)? addNote,
    TResult Function(DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotesCopyWith<$Res> {
  factory _$$GetNotesCopyWith(
          _$GetNotes value, $Res Function(_$GetNotes) then) =
      __$$GetNotesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNotes>
    implements _$$GetNotesCopyWith<$Res> {
  __$$GetNotesCopyWithImpl(_$GetNotes _value, $Res Function(_$GetNotes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNotes implements GetNotes {
  const _$GetNotes();

  @override
  String toString() {
    return 'HomeEvent.getNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
    required TResult Function(NotesModel note) updateNote,
    required TResult Function(NotesModel note) addNote,
    required TResult Function(int id) deleteNote,
  }) {
    return getNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
    TResult? Function(NotesModel note)? updateNote,
    TResult? Function(NotesModel note)? addNote,
    TResult? Function(int id)? deleteNote,
  }) {
    return getNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    TResult Function(NotesModel note)? updateNote,
    TResult Function(NotesModel note)? addNote,
    TResult Function(int id)? deleteNote,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(UpdateNote value) updateNote,
    required TResult Function(AddNote value) addNote,
    required TResult Function(DeleteNote value) deleteNote,
  }) {
    return getNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(UpdateNote value)? updateNote,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(DeleteNote value)? deleteNote,
  }) {
    return getNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(UpdateNote value)? updateNote,
    TResult Function(AddNote value)? addNote,
    TResult Function(DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(this);
    }
    return orElse();
  }
}

abstract class GetNotes implements HomeEvent {
  const factory GetNotes() = _$GetNotes;
}

/// @nodoc
abstract class _$$UpdateNoteCopyWith<$Res> {
  factory _$$UpdateNoteCopyWith(
          _$UpdateNote value, $Res Function(_$UpdateNote) then) =
      __$$UpdateNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesModel note});
}

/// @nodoc
class __$$UpdateNoteCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateNote>
    implements _$$UpdateNoteCopyWith<$Res> {
  __$$UpdateNoteCopyWithImpl(
      _$UpdateNote _value, $Res Function(_$UpdateNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$UpdateNote(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesModel,
    ));
  }
}

/// @nodoc

class _$UpdateNote implements UpdateNote {
  const _$UpdateNote({required this.note});

  @override
  final NotesModel note;

  @override
  String toString() {
    return 'HomeEvent.updateNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNote &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteCopyWith<_$UpdateNote> get copyWith =>
      __$$UpdateNoteCopyWithImpl<_$UpdateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
    required TResult Function(NotesModel note) updateNote,
    required TResult Function(NotesModel note) addNote,
    required TResult Function(int id) deleteNote,
  }) {
    return updateNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
    TResult? Function(NotesModel note)? updateNote,
    TResult? Function(NotesModel note)? addNote,
    TResult? Function(int id)? deleteNote,
  }) {
    return updateNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    TResult Function(NotesModel note)? updateNote,
    TResult Function(NotesModel note)? addNote,
    TResult Function(int id)? deleteNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(UpdateNote value) updateNote,
    required TResult Function(AddNote value) addNote,
    required TResult Function(DeleteNote value) deleteNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(UpdateNote value)? updateNote,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(DeleteNote value)? deleteNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(UpdateNote value)? updateNote,
    TResult Function(AddNote value)? addNote,
    TResult Function(DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class UpdateNote implements HomeEvent {
  const factory UpdateNote({required final NotesModel note}) = _$UpdateNote;

  NotesModel get note;
  @JsonKey(ignore: true)
  _$$UpdateNoteCopyWith<_$UpdateNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNoteCopyWith<$Res> {
  factory _$$AddNoteCopyWith(_$AddNote value, $Res Function(_$AddNote) then) =
      __$$AddNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({NotesModel note});
}

/// @nodoc
class __$$AddNoteCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddNote>
    implements _$$AddNoteCopyWith<$Res> {
  __$$AddNoteCopyWithImpl(_$AddNote _value, $Res Function(_$AddNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$AddNote(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NotesModel,
    ));
  }
}

/// @nodoc

class _$AddNote implements AddNote {
  const _$AddNote({required this.note});

  @override
  final NotesModel note;

  @override
  String toString() {
    return 'HomeEvent.addNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNote &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteCopyWith<_$AddNote> get copyWith =>
      __$$AddNoteCopyWithImpl<_$AddNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
    required TResult Function(NotesModel note) updateNote,
    required TResult Function(NotesModel note) addNote,
    required TResult Function(int id) deleteNote,
  }) {
    return addNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
    TResult? Function(NotesModel note)? updateNote,
    TResult? Function(NotesModel note)? addNote,
    TResult? Function(int id)? deleteNote,
  }) {
    return addNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    TResult Function(NotesModel note)? updateNote,
    TResult Function(NotesModel note)? addNote,
    TResult Function(int id)? deleteNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(UpdateNote value) updateNote,
    required TResult Function(AddNote value) addNote,
    required TResult Function(DeleteNote value) deleteNote,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(UpdateNote value)? updateNote,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(DeleteNote value)? deleteNote,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(UpdateNote value)? updateNote,
    TResult Function(AddNote value)? addNote,
    TResult Function(DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class AddNote implements HomeEvent {
  const factory AddNote({required final NotesModel note}) = _$AddNote;

  NotesModel get note;
  @JsonKey(ignore: true)
  _$$AddNoteCopyWith<_$AddNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteCopyWith<$Res> {
  factory _$$DeleteNoteCopyWith(
          _$DeleteNote value, $Res Function(_$DeleteNote) then) =
      __$$DeleteNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteNoteCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteNote>
    implements _$$DeleteNoteCopyWith<$Res> {
  __$$DeleteNoteCopyWithImpl(
      _$DeleteNote _value, $Res Function(_$DeleteNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteNote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteNote implements DeleteNote {
  const _$DeleteNote({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeEvent.deleteNote(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNote &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteCopyWith<_$DeleteNote> get copyWith =>
      __$$DeleteNoteCopyWithImpl<_$DeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
    required TResult Function(NotesModel note) updateNote,
    required TResult Function(NotesModel note) addNote,
    required TResult Function(int id) deleteNote,
  }) {
    return deleteNote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
    TResult? Function(NotesModel note)? updateNote,
    TResult? Function(NotesModel note)? addNote,
    TResult? Function(int id)? deleteNote,
  }) {
    return deleteNote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    TResult Function(NotesModel note)? updateNote,
    TResult Function(NotesModel note)? addNote,
    TResult Function(int id)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(UpdateNote value) updateNote,
    required TResult Function(AddNote value) addNote,
    required TResult Function(DeleteNote value) deleteNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(UpdateNote value)? updateNote,
    TResult? Function(AddNote value)? addNote,
    TResult? Function(DeleteNote value)? deleteNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(UpdateNote value)? updateNote,
    TResult Function(AddNote value)? addNote,
    TResult Function(DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNote implements HomeEvent {
  const factory DeleteNote({required final int id}) = _$DeleteNote;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteNoteCopyWith<_$DeleteNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<NotesModel> get notesModelList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({bool isLoading, List<NotesModel> notesModelList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? notesModelList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notesModelList: null == notesModelList
          ? _value.notesModelList
          : notesModelList // ignore: cast_nullable_to_non_nullable
              as List<NotesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<NotesModel> notesModelList});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? notesModelList = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notesModelList: null == notesModelList
          ? _value._notesModelList
          : notesModelList // ignore: cast_nullable_to_non_nullable
              as List<NotesModel>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading, required final List<NotesModel> notesModelList})
      : _notesModelList = notesModelList;

  @override
  final bool isLoading;
  final List<NotesModel> _notesModelList;
  @override
  List<NotesModel> get notesModelList {
    if (_notesModelList is EqualUnmodifiableListView) return _notesModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notesModelList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, notesModelList: $notesModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._notesModelList, _notesModelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_notesModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final List<NotesModel> notesModelList}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  List<NotesModel> get notesModelList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
