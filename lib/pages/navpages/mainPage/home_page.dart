import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/carouselWidget.dart';
import 'package:silkroad_trip/pages/navpages/mainPage/widgets/headWidget.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}

class PopularArtic extends StatelessWidget {
  const PopularArtic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
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
          Row(
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset(
                          'assets/homePage/kyrgyzstan_rukhordo_c_andrey_novoselov.jpg')
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
