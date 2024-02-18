import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 24, left: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 184, 172, 133),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                'Build your career with Asem Elgendi',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 26),
              ),
            ),
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 34),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 24.0),
            child: Text(
              'May 22/2005',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
