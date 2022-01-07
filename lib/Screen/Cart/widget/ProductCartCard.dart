// ignore_for_file: file_names
import 'package:ecommerce/Model/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constant.dart';
import '../../../SizeConfig.dart';

class ProductCartCard extends StatelessWidget {
  const ProductCartCard({
    required this.product,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/ProductInfo', arguments: [product]);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: getProportionateScreenHeight(130),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(product.imagePrin.toString())),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(height: getProportionateScreenHeight(13)),
                  Row(
                    children: [
                      Text(
                        '${product.price.toString()} DA',
                        style: const TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(width: getProportionateScreenWidth(15)),
                      Text(
                        'x $quantity',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
