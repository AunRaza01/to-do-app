import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String title;
  Color color;

  RoundButton({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 235,
      child: Center(
          child: Text(
        title,
        style: TextStyle(fontSize: 20),
      )),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
    );
  }
}
