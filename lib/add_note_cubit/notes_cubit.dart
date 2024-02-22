import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/add_note_cubit/nots_state.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotes);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccsess(notes: notes));
    } catch (e) {
      emit(Notesfailure(error: e.toString()));
    }
  }
}
