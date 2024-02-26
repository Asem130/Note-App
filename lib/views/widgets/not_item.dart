import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/add_note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edite_notes.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> EditeNotes(note: note)));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 24, left: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 14, 220, 224),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 26),
                ),
              ),
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 34),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 24.0),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
