import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 20),
          child: Row(
            children: [
              Text(
                'SilkRoad Trip',
                style: GoogleFonts.tenorSans(
                    fontSize: 25,
                    color: Color.fromRGBO(96, 125, 139, 1.0),
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        )
      ],
    );
  }
}
