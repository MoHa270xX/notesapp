import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constants/constants.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotsBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NotesViews(),
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
    );
  }
}
