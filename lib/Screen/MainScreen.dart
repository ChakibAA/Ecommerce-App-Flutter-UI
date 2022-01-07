// ignore_for_file: file_names
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:ecommerce/Controller/MainController.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../Constant.dart';
import 'Cart/CartScreen.dart';
import 'Home/Home.dart';
import 'Profile/Profile.dart';
import 'Search/Search.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final screen = [
    Home(),
    const Search(),
    CartScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (c) => Scaffold(
        key: c.scaffoldKey,
        extendBody: true,
        body: SafeArea(bottom: false, top: true, child: screen[c.index.value]),
        bottomNavigationBar: DotNavigationBar(
          currentIndex: c.index.value,
          selectedItemColor: primaryColor,
          onTap: (index) {
            c.increment(index);
          },
          items: [
            DotNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.home),
              selectedColor: primaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.search),
              selectedColor: primaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.shoppingCart),
              selectedColor: primaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.cog),
              selectedColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
