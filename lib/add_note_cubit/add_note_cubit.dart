import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff98c9a3);
  addNote(NoteModel note) async {
    note.color = color!.value;
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
