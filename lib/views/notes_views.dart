import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notesviewbody.dart';
import 'package:noteapp/widgets/addnotemodelsheet.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewbody(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.cyanAccent,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNote();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
