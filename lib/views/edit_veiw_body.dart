import 'package:flutter/material.dart';
import 'package:noteapp/widgets/CustomAppBar.dart';
import 'package:noteapp/widgets/Custom_textfeild.dart';

class EditVeiwBody extends StatelessWidget {
  const EditVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(title: "Edit Note", icon: Icons.done),
          SizedBox(height: 50),
          CustomTextFeild(tittle: "tittle"),
          SizedBox(height: 16),
          CustomTextFeild(tittle: "content", maxlines: 5),
        ],
      ),
    );
  }
}
