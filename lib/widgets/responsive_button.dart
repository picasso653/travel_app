import 'package:flutter/material.dart';
import 'package:travle_app/misc/colors.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width=100 });

  @override
  Widget build(BuildContext context) {
    return Flexible(child: Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('img/button-one.png')
        ],
      ),
    )
    );
  }
}
