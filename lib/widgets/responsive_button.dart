import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travle_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width=100 });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        children: [
          Image.asset('img/button-one.png')
        ],
      ),
    );
  }
}
