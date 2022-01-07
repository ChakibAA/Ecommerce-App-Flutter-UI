// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ProductInfoController extends GetxController {
  RxInt index = 0.obs;
  RxInt quantity = 1.obs;

  RxList<dynamic> data = <dynamic>[].obs;

  RxBool loadingProduct = true.obs;
  RxBool loadingPag = false.obs;
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      loadingPag.value = true;
    }
  }

  plus() {
    quantity.value++;
    update();
  }

  minus() {
    if (quantity.value > 1) {
      quantity.value--;
      update();
    }
  }
}
