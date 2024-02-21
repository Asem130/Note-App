import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_bottm.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddButtomSheetBody extends StatefulWidget {
  const AddButtomSheetBody({super.key});

  @override
  State<AddButtomSheetBody> createState() => _AddButtomSheetBodyState();
}

class _AddButtomSheetBodyState extends State<AddButtomSheetBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: SizedBox(
        height: 400,
        child: Column(
          children: [
            CustomTextFormField(
              onSaved: (value) {
                title = value;
              },
              hintText: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              onSaved: (value) {
                supTitle = value;
              },
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextButtom(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.pop(context);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    
                  }
                },
                text: 'Add'),
          ],
        ),
      ),
    );
  }
}
