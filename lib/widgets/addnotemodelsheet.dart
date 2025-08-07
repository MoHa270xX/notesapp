import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Custom_textfeild.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextFeild(tittle: "Tittle"),
            SizedBox(height: 20),
            CustomTextFeild(tittle: "Content", maxlines: 5),
          ],
        ),
      ),
    );
  }
}
