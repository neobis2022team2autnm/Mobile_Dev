import 'package:flutter/material.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/home_page.dart';
import 'package:silkroad_trip/pages/navpages/navBar/navBar.dart';
import 'package:silkroad_trip/pages/welcomePages/splashscreen.dart';
import 'package:silkroad_trip/pages/welcomePages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainPage(),
    );
  }
}
