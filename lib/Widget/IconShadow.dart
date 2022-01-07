// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../SizeConfig.dart';

// ignore: must_be_immutable
class IconShadow extends StatelessWidget {
  IconShadow({
    required this.icons,
    required this.size,
    required this.onpressed,
    Key? key,
  }) : super(key: key);
  final IconData icons;
  final double size;
  // ignore: prefer_typing_uninitialized_variables
  var onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(48),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: -10.0,
          blurRadius: 10.0,
          offset: Offset(0.0, 3.0),
        ),
      ]),
      child: Material(
        color: Colors.white,
        borderOnForeground: false,
        shape: const CircleBorder(),
        child: IconButton(
          iconSize: size,
          color: Colors.black,
          splashRadius: 19,
          icon: Icon(icons),
          onPressed: onpressed,
        ),
      ),
    );
  }
}
