import 'package:notes_app/domain/home/model/notes_model.dart';

abstract class NotesModelServices {
  Future <List<NotesModel>> getNotes();
  Future <void> insertNote(NotesModel note);
  Future <void> updateNote(NotesModel note);
  Future <void> deleteNote(int id);
}