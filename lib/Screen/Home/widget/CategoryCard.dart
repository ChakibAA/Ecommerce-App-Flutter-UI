// ignore_for_file: file_names
import 'package:ecommerce/Model/Category.dart';
import 'package:flutter/material.dart';

import '../../../Constant.dart';
import '../../../SizeConfig.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: getProportionateScreenWidth(defaultpadding * 0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              backgroundImage: AssetImage(category.img),
            ),
          ),
          Text(
            category.title!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
