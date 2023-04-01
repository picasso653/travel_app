import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travle_app/cubit/app_cubits.dart';
import 'package:travle_app/misc/colors.dart';
import 'package:travle_app/widgets/app_large_text.dart';
import 'package:travle_app/widgets/app_text.dart';
import 'package:travle_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      // ignore: prefer_interpolation_to_compose_strings
                      image: AssetImage("img/" + images[index]))),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountains",
                          size: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text:
                              "Mountain hikes give you \n an incredible sense of freedom \n along with endurance tests.",
                          color: AppColors.textColor2,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: Container(
                              width: 200, child: Row(children: [ResponsiveButton(width: 120)],)),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          margin: const EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
