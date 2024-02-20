abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccsess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
