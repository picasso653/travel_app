import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

   AppLargeText({super.key,  this.color = Colors.black,
     this.size = 30, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold
    ),);
  }
}
