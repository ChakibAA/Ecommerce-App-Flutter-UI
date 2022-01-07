// ignore_for_file: file_names

import 'package:ecommerce/Controller/ProductInfoController.dart';
import 'package:ecommerce/Model/Product.dart';
import 'package:ecommerce/Widget/IconShadow.dart';
import 'package:ecommerce/Widget/ProductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../Constant.dart';
import '../../SizeConfig.dart';

class ProductInfo extends StatelessWidget {
  ProductInfo({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();

  final Product product = Get.arguments[0] as Product;
  final List<Product> products = [
    Product(
      imagePrin: 'assets/category/shoes.png',
      title: 'Chaussure Nike',
      price: 10000,
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
    return GetBuilder<ProductInfoController>(
        init: ProductInfoController(),
        builder: (c) => Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                backgroundColor: primaryColor,
                onPressed: () {},
                label: const Text('Ajouter au panier '),
                icon: const FaIcon(FontAwesomeIcons.cartPlus),
              ),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                    leadingWidth: getProportionateScreenWidth(70),
                    leading: Container(
                      padding: const EdgeInsets.only(left: defaultpadding),
                      child: IconShadow(
                        onpressed: () {
                          Get.back();
                        },
                        icons: CupertinoIcons.back,
                        size: 40,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    pinned: false,
                    floating: false,
                    expandedHeight: getProportionateScreenHeight(350),
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background: Stack(
                        children: [
                          SizedBox(
                              height: getProportionateScreenHeight(380),
                              child: Image.asset(
                                product.imagePrin.toString(),
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                        padding: const EdgeInsets.only(
                          left: defaultpadding,
                          right: defaultpadding,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(15),
                            ),
                            Row(
                              children: [
                                Text(
                                  product.price.toString() + ' DA',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Expanded(child: SizedBox()),
                                IconButton(
                                    onPressed: () => c.minus(),
                                    icon: const Icon(Icons.remove)),
                                Text(
                                  c.quantity.value.toString(),
                                  style: const TextStyle(fontSize: 25),
                                ),
                                IconButton(
                                    onPressed: () => c.plus(),
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(30),
                            ),
                            const Text(
                              'Incididunt nisi mollit ipsum excepteur pariatur. Amet qui cillum consequat excepteur velit. Duis non ullamco fugiat adipisicing nulla Lorem non adipisicing ipsum sit labore nulla occaecat. Proident laborum et adipisicing exercitation culpa anim. Nostrud qui aute velit officia. Enim sunt anim in excepteur duis enim magna ex sit adipisicing. Non culpa ex proident excepteur occaecat et do ipsum ea aute Lorem tempor laborum sint.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        )),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                        margin: const EdgeInsets.only(
                            top: defaultpadding, bottom: defaultpadding * 5),
                        height: getProportionateScreenHeight(250),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: defaultpadding),
                              child: Text(
                                'Produit similaire',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(20),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: products.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return Row(
                                          children: [
                                            if (index == 0)
                                              const SizedBox(
                                                width: defaultpadding,
                                              ),
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    right: 12),
                                                child: ProductCard(
                                                  product: products[index],
                                                )),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ));
  }
}
