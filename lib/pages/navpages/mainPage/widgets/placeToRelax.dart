import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';

class PlacesToRelax extends StatelessWidget {
  const PlacesToRelax({
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
                  text: 'Places, you can ',
                  style: GoogleFonts.tenorSans(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'relax',
                      style: GoogleFonts.tenorSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor,
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
                height: 170,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Images.orionHotel,
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 44,
                      bottom: 25,
                      child: Text(
                        'Orion hotel',
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
                      child: Image.asset(
                        Images.hyatt,
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 25,
                      child: Text(
                        'Hyatt Regency',
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
                        Images.novotel,
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 60,
                      bottom: 35,
                      child: Text(
                        'Novotel',
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
                      child: Image.asset(
                        Images.jannat,
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 25,
                      bottom: 35,
                      child: Text(
                        'Jannat Regency',
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
                  child: Text('Read more'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
