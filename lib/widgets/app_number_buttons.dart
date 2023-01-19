import 'package:flutter/material.dart';
import 'package:travle_app/widgets/app_text.dart';

// ignore: must_be_immutable
class AppNumberButton extends StatelessWidget {
  IconData? icon;
  String? text;
  final Color color;
  final Color backgroudColor;
  final Color borderColor;
  double size;
  bool? isIcon;
  AppNumberButton(
      {super.key,
      this.icon,
      this.text,
      required this.color,
      required this.backgroudColor,
      required this.borderColor,
      required this.size,
      this.isIcon
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(15),
          color: backgroudColor),
          child: isIcon==false?Center(child: AppText(text: text!, color: Colors.black,),):Center(child: Icon(icon, color: color,),),
    );
  }
}
