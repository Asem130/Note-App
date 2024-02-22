import 'package:note_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitialState extends NotesState {}

class NotesSuccsess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccsess({required this.notes});
}

class Notesfailure extends NotesState {
  final String error;

  Notesfailure({required this.error});
}
