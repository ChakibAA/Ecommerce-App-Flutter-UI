// ignore_for_file: file_names

import 'package:ecommerce/Model/Product.dart';
import 'package:flutter/material.dart';

import '../../Constant.dart';
import '../../SizeConfig.dart';
import 'widget/ProductCartCard.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: checkOut(),
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.only(
                right: defaultpadding,
                left: defaultpadding,
                bottom: defaultpadding),
            sliver: SliverAppBar(
              forceElevated: true,
              elevation: 0,
              title: Text(
                'Votre Panier',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              backgroundColor: Colors.transparent,
              pinned: false,
              floating: false,
            ),
          ),
          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Dismissible(
                      direction: DismissDirection.endToStart,
                      background: slideLeft(),
                      key: UniqueKey(),
                      onDismissed: (direction) {},
                      child: ProductCartCard(
                          product: products[index], quantity: 1));
                }, childCount: products.length),
              )),
        ],
      ),
    );
  }

  Widget slideLeft() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
          Icon(
            Icons.delete,
            color: Colors.white,
          ),
          Text(
            "Effacer",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget checkOut() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: "Total :\n",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "3500 DA",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(primaryColor),
                      fixedSize: MaterialStateProperty.all(Size(
                          getProportionateScreenWidth(150),
                          getProportionateScreenHeight(50))),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                    ),
                    child: const Text(
                      'Valider',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
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
