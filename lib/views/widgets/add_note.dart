import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_bottm.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddButtomSheetNote extends StatelessWidget {
  const AddButtomSheetNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: SizedBox(
          height:400,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextButtom(text: 'Add'),
              
            ],
          ),
        ),
      ),
    );
  }
}
