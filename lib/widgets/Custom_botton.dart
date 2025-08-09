import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  Custombutton({this.ontap, this.text});
  String? text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xff62FCD7),
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        height: 60,
        width: double.infinity,
      ),
    );
  }
}
