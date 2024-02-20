import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotes);
      await notesBox.add(note);
      emit(AddNoteSuccsess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
