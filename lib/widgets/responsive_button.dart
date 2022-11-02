import 'package:silkroad_trip/resources/resources.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(96, 125, 139, 1.0),
            padding: EdgeInsets.all(8)),
        onPressed: () {},
        child: Text('Log in'));
  }
}
