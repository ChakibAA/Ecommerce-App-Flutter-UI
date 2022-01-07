// ignore_for_file: file_names
import 'package:ecommerce/Model/Category.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';
import '../SizeConfig.dart';

// ignore: must_be_immutable
class CategoryCardSearch extends StatelessWidget {
  CategoryCardSearch({
    required this.category,
    Key? key,
  }) : super(key: key);

  Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        height: getProportionateScreenHeight(250),
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            color: Colors.white,
            borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Image.asset(category.img.toString())),
                Text(
                  category.title!,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
