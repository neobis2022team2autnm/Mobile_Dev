import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/resources/constants.dart';

Widget headWidget() => Container(
      padding: EdgeInsets.only(left: 17, right: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'SilkRoad Trip',
          style: GoogleFonts.tenorSans(
              fontSize: 25,
              color: AppColors.mainColor,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
