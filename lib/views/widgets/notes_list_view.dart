import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/notes_cubit.dart';
import 'package:note_app/add_note_cubit/nots_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/not_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel> note = BlocProvider.of<NotesCubit>(context).notes!;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            itemCount: note.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: NoteItem(note: note[index]),
                )),
      );
    });
  }
}
