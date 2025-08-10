import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Customiconsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 26)),
          Spacer(),
          CustomIconSearch(icon: icon),
        ],
      ),
    );
  }
}
