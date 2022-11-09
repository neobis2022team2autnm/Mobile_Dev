import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/home_page.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<CardItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3),
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }
}

Widget buildCard({required CardItem item}) => Container(
      child: Column(
        children: [
          Expanded(
            child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 0),
              icon: SvgPicture.asset(
                item.imageName,
                fit: BoxFit.cover,
              ),
              onPressed: (() {}),
              iconSize: 75,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(item.title)
        ],
      ),
    );
