import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/applications/bloc/home_bloc.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/core/enum.dart';
import 'package:notes_app/core/sizedbox.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:notes_app/presentations/home/home_screen.dart';

class NotesFormScreen extends StatelessWidget {
  final ActionType type;
  final NotesModel? note;
  NotesFormScreen({
    super.key,
    this.type = ActionType.addNote,
    this.note,
  });

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (type == ActionType.editNote) {
      // id null check
      if (note!.key == null) {
        Navigator.of(context).pop();
      }
      if (note == null) {
        Navigator.of(context).pop();
      } else {
        _titleController.text = note!.title??'No Title';
        _noteController.text = note!.description??'No description';
      }
    }
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // title field
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            sheight10,
            // note field
            TextFormField(
              controller: _noteController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Note',
              ),
              maxLines: 4,
            ),
            sheight20,
            // button
            ElevatedButton(
                onPressed: () {
                  final title = _titleController.value.text;
                  final description = _noteController.value.text;
                  final DateTime date = DateTime.now();
                  if (title.isEmpty || description.isEmpty) {
                    return;
                  }

                  if (type == ActionType.addNote) {
                    final NotesModel newNote = NotesModel(
                      title: title,
                      description: description,
                      date: date,
                    );
                    context.read<HomeBloc>().add(AddNote(note: newNote));
                  } else {
                    final NotesModel newNote = NotesModel(
                      id: note!.key,
                      title: title,
                      description: description,
                      date: note!.date,
                    );
                    context.read<HomeBloc>().add(UpdateNote(note: newNote));
                  }

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => const HomeScreen()),
                    (route) => false,
                  );
                },
                child: Text(
                  type == ActionType.editNote ? 'Update' : 'Add',
                  style: const TextStyle(color: primaryOverlay),
                ))
          ],
        ),
      ),
    );
  }
}
