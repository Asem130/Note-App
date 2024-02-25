import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/flating_action_botton.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = 'notesview';
  const NotesView({super.key});
  @override
  Widget build(context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: NotesViewBody(),
    );
  }
}
