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
          CustomAppBar(tittle: "Edit Note", icon: Icons.done),
        ],
      ),
    );
  }
}
