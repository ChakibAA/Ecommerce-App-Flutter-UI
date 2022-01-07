// ignore_for_file: file_names
import 'package:ecommerce/Model/Category.dart';
import 'package:ecommerce/Widget/CategoryCardSearch.dart';
import 'package:ecommerce/Widget/IconShadow.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import '../../Constant.dart';
import '../../SizeConfig.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController search = TextEditingController();

  bool click = false;
  final List<Category> category = [
    Category(img: 'assets/category/shoes.png', title: 'Chaussure'),
    Category(img: 'assets/category/tshirt.png', title: 'T-Shirt'),
    Category(img: 'assets/category/ps4.png', title: 'Console'),
    Category(img: 'assets/category/casque.png', title: 'Casque'),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(right: defaultpadding, left: 0),
          sliver: SliverAppBar(
            foregroundColor: Colors.black,
            forceElevated: true,
            elevation: 0,
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: AnimSearchBar(
              animationDurationInMilli: 500,
              helpText: "Recherche",
              closeSearchOnSuffixTap: false,
              style: const TextStyle(color: Colors.black),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              color: Colors.white,
              width: getProportionateScreenWidth(400),
              textController: search,
              onSuffixTap: () {
                search.clear();
              },
            ),
            actions: [
              IconShadow(
                onpressed: () {},
                icons: Icons.filter_list,
                size: 25,
              ),
            ],
            backgroundColor: Colors.transparent,
            pinned: false,
            floating: false,
            expandedHeight: getProportionateScreenHeight(90),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(22),
            right: getProportionateScreenWidth(22),
          ),
          sliver: const SliverToBoxAdapter(
            child: Text(
              'Parcourir les Categories',
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                childAspectRatio: 0.9),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return CategoryCardSearch(
                category: category[index],
              );
              // ignore: invalid_use_of_protected_member
            }, childCount: category.length),
          ),
        ),
      ],
    );
  }
}
