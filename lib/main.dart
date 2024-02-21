import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edite_notes.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotes);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NotesView.id,
        routes: {
          NotesView.id: (context) => const NotesView(),
          EditeNotes.id: (context) => const EditeNotes(),
        },
        theme:
            ThemeData(fontFamily: 'Crimson Text', brightness: Brightness.dark),
      ),
    );
  }
}
