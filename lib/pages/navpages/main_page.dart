import 'package:flutter_svg/flutter_svg.dart';
import 'package:silkroad_trip/pages/navpages/bar_item_page.dart';
import 'package:silkroad_trip/pages/navpages/home_page.dart';
import 'package:silkroad_trip/pages/navpages/my_page.dart';
import 'package:silkroad_trip/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:silkroad_trip/resources/resources.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(Images.homeUnSel),
            activeIcon: SvgPicture.asset(Images.homeSel),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: SvgPicture.asset(Images.searchUnSel),
            activeIcon: SvgPicture.asset(Images.searchSel),
          ),
          BottomNavigationBarItem(
            label: "Picker",
            icon: SvgPicture.asset(Images.pickerUnSel),
            activeIcon: SvgPicture.asset(Images.pickerSel),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset(Images.profileUnSel),
            activeIcon: SvgPicture.asset(Images.profileUnSel),
          ),
        ],
      ),
    );
  }
}
