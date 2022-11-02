import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:silkroad_trip/pages/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/animations/42070-travel-is-fun.json'),
        splashIconSize: 350,
        backgroundColor: Color.fromRGBO(96, 125, 139, 1.0),
        pageTransitionType: PageTransitionType.leftToRight,
        nextScreen: WelcomePage());
  }
}
