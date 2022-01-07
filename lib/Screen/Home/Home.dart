// ignore_for_file: file_names
import 'package:ecommerce/Controller/HomeController.dart';
import 'package:ecommerce/Controller/MainController.dart';
import 'package:ecommerce/Model/Category.dart';
import 'package:ecommerce/Model/Product.dart';
import 'package:ecommerce/Screen/Home/widget/HomeAppBar.dart';
import 'package:ecommerce/Widget/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../SizeConfig.dart';
import 'widget/HomeButton.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final menuController = Get.put(MainController());

  final List<Category> category = [
    Category(img: 'assets/category/shoes.png', title: 'Chaussure'),
    Category(img: 'assets/category/tshirt.png', title: 'T-Shirt'),
    Category(img: 'assets/category/ps4.png', title: 'Console'),
    Category(img: 'assets/category/casque.png', title: 'Casque'),
  ];

  final List<Product> products = [
    Product(
      imagePrin: 'assets/category/shoes.png',
      title: 'Chaussure Nike',
      price: 1000,
    ),
    Product(
      imagePrin: 'assets/category/tshirt.png',
      title: 'T-Shirt Adidas',
      price: 2500,
    ),
    Product(
      imagePrin: 'assets/category/ps4.png',
      title: 'Manette PS4',
      price: 5000,
    ),
    Product(
      imagePrin: 'assets/category/casque.png',
      title: 'Casque 2k',
      price: 6400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (c) => SafeArea(
              bottom: false,
              child: CustomScrollView(
                slivers: [
                  HomeAppBar(
                    menuController: menuController,
                    c: c,
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Homebutton(
                          title: 'Tendance',
                          index: 0,
                          c: c,
                        ),
                        Homebutton(
                          title: 'Populaire',
                          index: 1,
                          c: c,
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(22),
                      bottom: getProportionateScreenHeight(100),
                      left: getProportionateScreenWidth(22),
                      right: getProportionateScreenWidth(22),
                    ),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              childAspectRatio: 0.6),
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return ProductCard(
                          product: products[index],
                        );
                      }, childCount: products.length),
                    ),
                  ),
                ],
              ),
            ));
  }
}
