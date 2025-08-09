import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Customiconsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.tittle, required this.icon});
  final String tittle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(tittle, style: TextStyle(fontSize: 26)),
          Spacer(),
          CustomIconSearch(icon: icon),
        ],
      ),
    );
  }
}
