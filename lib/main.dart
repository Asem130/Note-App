import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/const.dart';
import 'package:note_app/views/edite_notes.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotes);
   runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditeNotes.id: (context) => const EditeNotes(),
      },
      theme: ThemeData(fontFamily: 'Crimson Text', brightness: Brightness.dark),
    );
  }
}
