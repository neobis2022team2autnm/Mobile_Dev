import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(96, 125, 139, 1),
        body: Padding(
          padding: const EdgeInsets.only(left: 50, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Images.logo),
              SizedBox(
                height: 110,
              ),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
                elevation: 10,
                
              ),
            ],
          ),
        ));
  }
}
