// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  RxInt index = 0.obs;

  final ScrollController scrollController = ScrollController();

  RxBool loadingProduct = true.obs;
  RxBool loadingPag = false.obs;

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

  increment(int value) {
    index = value.obs;
    update();
  }
}
