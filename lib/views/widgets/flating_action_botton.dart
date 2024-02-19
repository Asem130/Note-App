import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              context: context,
              builder: (context) {
                return const AddButtomSheetNote();
              });
        },
        child: const Icon(Icons.add));
  }
}
