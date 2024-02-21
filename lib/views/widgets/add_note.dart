import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/add_note_cubit/add_note_state.dart';
import 'package:note_app/views/widgets/add_bottom_sheet_body.dart';

class AddButtomSheetNote extends StatelessWidget {
  const AddButtomSheetNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('');
            }
            if (state is AddNoteSuccsess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) => ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddButtomSheetBody())),
    );
  }
}
