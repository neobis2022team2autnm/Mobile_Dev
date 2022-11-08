import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/resources/constants.dart';

Widget headWidget() => Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'SilkRoad Trip',
            style: GoogleFonts.tenorSans(
                fontSize: 25,
                color: AppColors.mainColor,
                fontWeight: FontWeight.w200),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
    );
