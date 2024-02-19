import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
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
