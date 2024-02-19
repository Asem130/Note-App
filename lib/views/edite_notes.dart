import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_bottm.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class EditeNotes extends StatelessWidget {
  const EditeNotes({super.key});
  static String id = 'editeview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditeNotesBody(),
    );
  }
}

class EditeNotesBody extends StatelessWidget {
  const EditeNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(
            title: 'Edite Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(hintText: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextButtom(text: 'Save')
        ],
      ),
    );
  }
}
