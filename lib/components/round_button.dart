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
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
