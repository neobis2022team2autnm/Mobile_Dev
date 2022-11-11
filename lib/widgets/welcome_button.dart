import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonMain,
              padding: EdgeInsets.all(0)),
          onPressed: () {},
          child: Image.asset('assets/welcomepage/button-one.png')),
    );
  }
}
