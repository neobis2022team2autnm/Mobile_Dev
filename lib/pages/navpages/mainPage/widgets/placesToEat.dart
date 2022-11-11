import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';

class PlacesToEat extends StatelessWidget {
  const PlacesToEat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: 'Места, где можно ',
                  style: GoogleFonts.tenorSans(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '          вкусно',
                      style: GoogleFonts.tenorSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor,
                      ),
                    ),
                    TextSpan(
                      text: ' поесть',
                      style: GoogleFonts.tenorSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 180,
                height: 180,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Images.supara,
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 64,
                      bottom: 25,
                      child: Text(
                        'Супара',
                        maxLines: 3,
                        style: GoogleFonts.cantarell(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 135,
                      top: 0,
                      bottom: 150,
                      child: IconButton(
                        onPressed: null,
                        // icon: Image.asset(Images.likeNotAdd)
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.whiteMain,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 180,
                height: 180,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Images.faiza,
                        fit: BoxFit.fitHeight,
                        height: 160,
                      ),
                    ),
                    Positioned(
                      left: 65,
                      bottom: 25,
                      child: Text(
                        'Фаиза',
                        maxLines: 2,
                        style: GoogleFonts.cantarell(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 135,
                      top: 0,
                      bottom: 150,
                      child: IconButton(
                        onPressed: null,
                        // icon: Image.asset(Images.likeNotAdd)
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.whiteMain,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 180,
                height: 180,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Images.navat,
                        height: 165,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 35,
                      right: 15,
                      child: Text(
                        'Чайхана “Navat”',
                        maxLines: 4,
                        style: GoogleFonts.cantarell(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 135,
                      top: 0,
                      bottom: 150,
                      child: IconButton(
                        onPressed: null,
                        // icon: Image.asset(Images.likeNotAdd)
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.whiteMain,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 180,
                height: 180,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          Images.chinaTown,
                          height: 165,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      bottom: 35,
                      child: Text(
                        'China Town',
                        maxLines: 4,
                        style: GoogleFonts.cantarell(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 135,
                      top: 0,
                      bottom: 150,
                      child: IconButton(
                        onPressed: null,
                        // icon: Image.asset(Images.likeNotAdd)
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.whiteMain,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: AppColors.mainColor, // foreground
                  ),
                  onPressed: () {},
                  child: Text('Подробнее'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
