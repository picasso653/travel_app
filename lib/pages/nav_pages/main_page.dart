import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travle_app/pages/nav_pages/bar_item_page.dart';
import 'package:travle_app/pages/nav_pages/home_page.dart';
import 'package:travle_app/pages/nav_pages/my_page.dart';
import 'package:travle_app/pages/nav_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
        setState(() {
          currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black45,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.apps,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Bar',
              icon: Icon(
                Icons.bar_chart_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Me',
              icon: Icon(
                Icons.person,
              ),
            ),
          ]),
    );
  }
}
