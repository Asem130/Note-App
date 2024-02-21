import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom(
      {super.key, required this.text, this.onTap, this.isLoading = false});
  final String text;
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isLoading == true
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ))
                : Text(
                    text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Regular'),
                  )),
      ),
    );
  }
}
