// ignore_for_file: file_names
import 'package:ecommerce/Model/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../Constant.dart';
import '../SizeConfig.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/ProductInfo', arguments: [product]);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        height: getProportionateScreenHeight(500),
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
                Expanded(child: Image.asset(product.imagePrin.toString())),
                Text(
                  product.title!,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  product.price.toString() + ' DA',
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
