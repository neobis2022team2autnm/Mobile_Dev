import 'package:flutter/material.dart';
import 'package:silkroad_trip/resources/resources.dart';
import 'auth_service.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(96, 125, 139, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(Images.logo),
              ),
              SignInButton(Buttons.Google,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
                  onPressed: () {
                AuthService().signInWithGoogle();
              })
            ],
          ),
        ),
      ),
    );
  }
}
