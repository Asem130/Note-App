import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomAppBar()],
        ),
      ),
    );
  }
}
