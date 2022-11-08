import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
    CardItem(
      imageName: Images.articlesUnSel,
      title: 'Статьи',
    ),
    CardItem(
      imageName: Images.newsUnSel,
      title: 'Новости',
    ),
    CardItem(
      imageName: Images.lifehackUnSel,
      title: 'Лайфхаки',
    ),
    CardItem(
      imageName: Images.hotelUnSel,
      title: 'Отели',
    ),
    CardItem(
      imageName: Images.restaurantsUnSel,
      title: 'Рестораны',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SilkRoad Trip',
                      style: GoogleFonts.tenorSans(
                          fontSize: 25,
                          color: Color.fromRGBO(96, 125, 139, 1.0),
                          fontWeight: FontWeight.w200),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, _) => SizedBox(
                    width: 0,
                    height: 0,
                  ),
                  itemBuilder: (context, index) =>
                      buildCard(item: items[index]),
                ),
              ),
            ],
          ),
        ),
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
          SizedBox(
            height: 4,
          ),
          Text(item.title)
        ],
      ),
    );
