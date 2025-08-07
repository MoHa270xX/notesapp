import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({required this.tittle});
  String? tittle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff62FCD7),
      decoration: InputDecoration(
        enabledBorder: buildborder(),
        focusedBorder: buildborder(Color(0xff62FCD7)),
        border: buildborder(),
        hint: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(tittle!, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

OutlineInputBorder buildborder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white, width: 1.2),
    borderRadius: BorderRadius.circular(8),
  );
}
