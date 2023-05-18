import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:notes_app/domain/home/notes_model_services.dart';
import 'package:injectable/injectable.dart';

const dbName = 'notes-database';

@LazySingleton(as: NotesModelServices)
class NotesFunctions implements NotesModelServices {

  // delete note from hive using key
  @override
  Future<void> deleteNote(int id) async {
    final box = await Hive.openBox<NotesModel>(dbName);
    await box.delete(id);
  }

  // get notes as list of notemodel
  @override
  Future<List<NotesModel>> getNotes() async {
    final box = await Hive.openBox<NotesModel>(dbName);
    return box.values.toList();
    
  }

  // insert note to hive 
  @override
  Future<void> insertNote(NotesModel note) async {
    final box = await Hive.openBox<NotesModel>(dbName);
    var newNote = note;
    // take key as id
    final int id =await box.add(newNote);
    // add id to notemodel
    newNote.id=id;
    // log(newNote.id.toString());
    // save
    newNote.save();

  }
  // update note from hive using key as id
  @override
  Future<void> updateNote(NotesModel note,) async {
    final box = await Hive.openBox<NotesModel>(dbName);
    // here old key == id, note(updated note)
    await box.put(note.id, note);
  }
}
