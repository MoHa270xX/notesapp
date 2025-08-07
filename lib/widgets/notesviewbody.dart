import 'package:flutter/material.dart';
import 'package:noteapp/widgets/CustomAppBar.dart';

import 'package:noteapp/widgets/notesitem.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [SizedBox(height: 60), CustomAppBar(), Notesitem()],
      ),
    );
  }
}
