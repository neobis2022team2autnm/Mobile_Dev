import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:silkroad_trip/pages/welcomePages/welcome_page.dart';
import 'package:silkroad_trip/resources/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/animations/42070-travel-is-fun.json'),
        splashIconSize: 350,
        backgroundColor: AppColors.mainColor,
        pageTransitionType: PageTransitionType.leftToRight,
        nextScreen: const WelcomePage());
  }
}
