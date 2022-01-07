// ignore_for_file: file_names
import 'package:ecommerce/Controller/HomeController.dart';
import 'package:flutter/material.dart';

import '../../../Constant.dart';
import '../../../SizeConfig.dart';

// ignore: must_be_immutable
class Homebutton extends StatelessWidget {
  Homebutton({
    required this.title,
    required this.index,
    required this.c,
    Key? key,
  }) : super(key: key);

  String title;
  int index;
  HomeController c;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        c.increment(index);
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
            c.index.value == index ? primaryColor : Colors.white),
        fixedSize: MaterialStateProperty.all(Size(
            getProportionateScreenWidth(150),
            getProportionateScreenHeight(50))),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: c.index.value == index ? Colors.white : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
}
