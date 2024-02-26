import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_bottm.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class EditeNotes extends StatelessWidget {
  const EditeNotes({super.key, required this.note});
  static String id = 'editeview';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNotesBody(
        note: note,
      ),
    );
  }
}

class EditeNotesBody extends StatefulWidget {
  const EditeNotesBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNotesBody> createState() => _EditeNotesBodyState();
}

class _EditeNotesBodyState extends State<EditeNotesBody> {
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = supTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edite Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onChanged: (value) {
              supTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
