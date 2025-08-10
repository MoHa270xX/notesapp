import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({required this.tittle, this.maxlines = 1, this.onSaved});
  String? tittle;
  int? maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This field is required";
        } else {
          return null;
        }
      },
      cursorColor: Color(0xff62FCD7),
      decoration: InputDecoration(
        enabledBorder: buildborder(),
        focusedBorder: buildborder(Color(0xff62FCD7)),
        border: buildborder(),
        hint: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            tittle!,
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
      ),
      maxLines: maxlines,
    );
  }
}

OutlineInputBorder buildborder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white, width: 1.2),
    borderRadius: BorderRadius.circular(8),
  );
}
