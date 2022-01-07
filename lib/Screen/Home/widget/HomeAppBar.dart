// ignore_for_file: file_names
import 'package:ecommerce/Controller/HomeController.dart';
import 'package:ecommerce/Controller/MainController.dart';
import 'package:flutter/material.dart';

import '../../../Constant.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.menuController,
    required this.c,
  }) : super(key: key);

  final MainController menuController;
  final HomeController c;

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.only(right: defaultpadding, left: defaultpadding),
      sliver: SliverAppBar(
        forceElevated: true,
        elevation: 0,
        title: Text(
          'Shooping express',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        pinned: false,
        floating: false,
      ),
    );
  }
}
