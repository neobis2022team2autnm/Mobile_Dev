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
      padding: EdgeInsets.only(left: 5),
      height: 90,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
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
            child: SizedBox(
              width: 70,
              child: Material(
                  color: Colors.white,
                  child: Ink.image(
                    image: AssetImage(item.imageName),
                    child: InkWell(
                      onTap: () {},
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(item.title)
        ],
      ),
    );
