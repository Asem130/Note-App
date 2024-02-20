import 'package:bloc/bloc.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
}
