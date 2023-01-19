import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

   AppText({super.key,  this.color = Colors.black54,
     this.size = 15, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: color,
      fontSize: size,
    ),);
  }
}
