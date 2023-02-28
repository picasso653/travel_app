import 'package:flutter/material.dart';
import 'package:travle_app/misc/colors.dart';
import 'package:travle_app/widgets/app_text.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width=100 });

  @override
  Widget build(BuildContext context) {
    return Flexible(child: Container(
      width: isResponsive==true?double.maxFinite:width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
        children: [
          isResponsive==true?Container(margin: const EdgeInsets.only(left: 15),
          child: AppText(text: "Book Tour Today", color: Colors.white,),
          ): Container(),
          Image.asset('img/button-one.png')
        ],
      ),
    )
    );
  }
}
