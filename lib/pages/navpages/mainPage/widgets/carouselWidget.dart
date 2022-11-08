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
      height: 80,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, _) => const SizedBox(
          width: 0,
          height: 0,
        ),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }
}

Widget buildCard({required CardItem item}) => Container(
      width: 90,
      child: Column(
        children: [
          Expanded(
              child: SvgPicture.asset(
            item.imageName,
            fit: BoxFit.cover,
          )),
          const SizedBox(
            height: 4,
          ),
          Text(item.title)
        ],
      ),
    );
