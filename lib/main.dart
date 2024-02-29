import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_app/add_note_cubit/notes_cubit.dart';

import 'package:note_app/bloc_observer.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);

  runApp(const NoteApp());
  FlutterNativeSplash.remove();
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NotesView.id,
        routes: {
          NotesView.id: (context) =>  NotesView(),
         
        },
        theme:
            ThemeData(fontFamily: 'Crimson Text', brightness: Brightness.dark),
      ),
    );
  }
}
