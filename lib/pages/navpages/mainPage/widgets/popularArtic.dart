import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';

class PopularArtic extends StatelessWidget {
  const PopularArtic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Популярные статьи',
              style: GoogleFonts.tenorSans(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 180,
                height: 170,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(Images.yssykk),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 25,
                      right: 20,
                      child: Text(
                        'Почему все любят отдыхать на ыссык-куле?',
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
                height: 170,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(Images.akTuz),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 25,
                      right: 10,
                      child: Text(
                        'Ущелье Ак-Тюз. Интересные факты',
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
                      child: Image.asset(Images.chashaManasa),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 35,
                      right: 15,
                      child: Text(
                        '«Чаша Манаса» Красота водопада в Барскоонском ущелье',
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(Images.chashaManasa),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 35,
                      right: 15,
                      child: Text(
                        '«Чаша Манаса» Красота водопада в Барскоонском ущелье',
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: AppColors.mainColor, // foreground
                ),
                onPressed: () {},
                child: Text('Подробнее'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
