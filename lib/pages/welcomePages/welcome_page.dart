import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/widgets/app_large_text.dart';
import 'package:silkroad_trip/widgets/app_text.dart';
import 'package:silkroad_trip/widgets/welcome_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
  ];

  List title = [
    "SilkRoad Trip",
  ];

  List subtitle = [
    "Открой красоты Кыргызстана с новой стороны",
  ];

  List description = [
    "Открой красоты Кыргызстана с новой стороны",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/welcomepage/' + images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                            itemCount: title.length, text: title[index]),
                        // AppText(
                        //   size: 30,
                        //   itemCount: subtitle.length,
                        //   text: subtitle[index],
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: description[index],
                            color: AppColors.textColor2,
                            size: 20,
                            itemCount: description.length,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const LogInButton(),
                      ],
                    ),
                    // Column(
                    //   children: List.generate(2, (indexDots) {
                    //     return Container(
                    //       margin: const EdgeInsets.only(bottom: 2),
                    //       width: 8,
                    //       height: index == indexDots ? 25 : 8,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(8),
                    //         color: index == indexDots
                    //             ? AppColors.mainColor
                    //             : AppColors.mainColor.withOpacity(0.3),
                    //       ),
                    //     );
                    //   }),
                    // )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
