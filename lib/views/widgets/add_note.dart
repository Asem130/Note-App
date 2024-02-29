import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';
import 'package:note_app/add_note_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/add_bottom_sheet_body.dart';

class AddButtomSheetNote extends StatelessWidget {
  const AddButtomSheetNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          top: 24,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {}
            if (state is AddNoteSuccsess) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            }
          },
          builder: (context, state) => AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const SingleChildScrollView(
              child: AddButtomSheetBody(),
            ),
          ),
        ),
      ),
    );
  }
}
