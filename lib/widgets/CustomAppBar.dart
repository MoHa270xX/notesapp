import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Customiconsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: const [
          Text("Notes", style: TextStyle(fontSize: 26)),
          Spacer(),
          CustomIconSearch(),
        ],
      ),
    );
  }
}
