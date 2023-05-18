import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/applications/bloc/home_bloc.dart';
import 'package:notes_app/core/enum.dart';
import 'package:notes_app/core/sizedbox.dart';
import 'package:notes_app/core/textstyle.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:notes_app/presentations/home/widgets/notes_form_screen.dart';

class NoteItemScreen extends StatelessWidget {
  const NoteItemScreen({super.key, required this.note});

  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          //* edit button
          IconButton(tooltip: 'Edit',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => NotesFormScreen(
                    type: ActionType.editNote,
                    note: note,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.edit),
          ),
          swidth10,
          // * delete button
          IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(DeleteNote(id: note.key));
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.delete,
            ),
            tooltip: 'Delete',
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              note.title,
              style: titleFontStyle.copyWith(fontSize: 30),
            ),
            const Divider(),
            Text(
              note.description,
              style: descFontStyle.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
