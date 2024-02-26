import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved, this.onChanged,
  });
  final String hintText;
  final int maxLines;
  final Function(String)? onChanged;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Faild must be not empty';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          errorStyle: const TextStyle(fontFamily: 'Regular'),
          hintText: hintText,
          border: boarder(),
          enabledBorder: boarder(),
          focusedBorder: boarder(kPrimaryColor)),
    );
  }

  OutlineInputBorder boarder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(16));
  }
}
