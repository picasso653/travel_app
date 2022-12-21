import 'package:flutter/material.dart';
import 'package:travle_app/widgets/app_large_text.dart';
import 'package:travle_app/widgets/app_text.dart';

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
                image: DecorationImage(image: AssetImage(
                  "img/"+ images[index]
                ))
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(text: "Mountains", size: 30,),
                        const SizedBox(height: 10,),
                        AppText(text: "Mountain hikes give you \n an incredible sense of freedom \n along with endurance tests.")
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
