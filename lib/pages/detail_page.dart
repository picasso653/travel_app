import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travle_app/cubit/app_cubit_states.dart';
import 'package:travle_app/cubit/app_cubits.dart';
import 'package:travle_app/misc/colors.dart';
import 'package:travle_app/widgets/app_large_text.dart';
import 'package:travle_app/widgets/app_number_buttons.dart';
import 'package:travle_app/widgets/app_text.dart';

import '../widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitState>(builder: (context, state) {
      DetailState detail = state as DetailState;
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 330,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.places.img),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                left: 20,
                top: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<AppCubits>(context).goHome();
                      },
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 240,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 290,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: detail.places.name,
                              color: Colors.black.withOpacity(0.8),
                            ),
                            AppLargeText(
                              text: "\$ " + detail.places.price.toString(),
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            AppText(
                              text: detail.places.location,
                              color: AppColors.textColor1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < detail.places.stars
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            AppText(
                              text: '(5.0)',
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppLargeText(
                          text: "People",
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: "Number of people in your group",
                          color: AppColors.mainTextColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppNumberButton(
                                  size: 50,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroudColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  text: (index + 1).toString(),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppLargeText(
                          text: 'Description',
                          color: Colors.black.withOpacity(0.8),
                          size: 21,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text:
                              detail.places.description,
                          color: AppColors.mainTextColor,
                        )
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      AppNumberButton(
                          size: 60,
                          color: AppColors.textColor2,
                          backgroudColor: Colors.white,
                          borderColor: AppColors.textColor2,
                          isIcon: true,
                          icon: Icons.favorite_border),
                      const SizedBox(
                        width: 40,
                      ),
                      ResponsiveButton(isResponsive: true)
                    ],
                  ))
            ],
          ),
        ),
      );
    });
  }
}
