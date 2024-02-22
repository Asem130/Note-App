import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/flating_action_botton.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = 'notesview';
  const NotesView({super.key});
  @override
  Widget build(context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        floatingActionButton: CustomFloatingActionButton(),
        body: NotesViewBody(),
      ),
    );
  }
}
