import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/applications/bloc/home_bloc.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/core/textstyle.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:notes_app/presentations/home/widgets/note_item_screen.dart';
import 'package:notes_app/presentations/home/widgets/notes_form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final dummyText = 'Hi';
  final title = 'Lorem Ipsum';
  final description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac eros sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque enim lacus, volutpat nec felis id, varius mollis leo. Proin placerat, libero at venenatis bibendum, ex mauris cursus dui, at iaculis ipsum mauris nec lectus. Pellentesque nec vestibulum metus. Sed pulvinar laoreet dolor quis hendrerit. Sed sit amet nulla mauris. Sed sed finibus justo. Duis ultrices lorem vitae purus sollicitudin interdum. Vestibulum orci diam, aliquet sed tortor vel, sagittis consectetur ligula. Duis malesuada ultrices sagittis. Nullam posuere ligula et lacus interdum dictum.';

  @override
  Widget build(BuildContext context) {
    // run after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const GetNotes());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 5 / 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                state.notesModelList.length,
                (index) {
                  return NoteItemCard(
                    note: state.notesModelList[index],
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // goto note_form_screen
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return NotesFormScreen();
          }));
        },
        backgroundColor: primaryBGColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// note item widget
class NoteItemCard extends StatelessWidget {
  const NoteItemCard({
    super.key,
    required this.note,
  });

  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return NoteItemScreen(note: note);
        }));
      },
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Colors.black26),
            borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                note.title,
                style: titleFontStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                note.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: descFontStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
