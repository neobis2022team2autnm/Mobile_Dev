import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/carouselWidget.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/headWidget.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/placeToRelax.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/placesToEat.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/popularArtic.dart';
import 'package:silkroad_trip/resources/constants.dart';
import 'package:silkroad_trip/resources/resources.dart';

class CardItem {
  final String imageName;
  final String title;

  const CardItem({
    required this.imageName,
    required this.title,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    const CardItem(
      imageName: Images.articlesUnSel,
      title: 'Статьи',
    ),
    const CardItem(
      imageName: Images.newsUnSel,
      title: 'Новости',
    ),
    const CardItem(
      imageName: Images.lifehackUnSel,
      title: 'Лайфхаки',
    ),
    const CardItem(
      imageName: Images.hotelUnSel,
      title: 'Отели',
    ),
    const CardItem(
      imageName: Images.restaurantsUnSel,
      title: 'Рестораны',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 45),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              headWidget(),
              const SizedBox(
                height: 15,
              ),
              CarouselWidget(items: items),
              SizedBox(
                height: 30,
              ),
              PopularArtic(),
              SizedBox(
                height: 40,
              ),
              PlacesToEat(),
              SizedBox(
                height: 40,
              ),
              PlacesToRelax(),
            ],
          ),
        ),
      ),
    );
  }
}
