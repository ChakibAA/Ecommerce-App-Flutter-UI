// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainController extends GetxController {
  RxInt index = 0.obs;

  final Rx<GlobalKey<ScaffoldState>> _scaffoldKey =
      GlobalKey<ScaffoldState>().obs;
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey.value;
  void controlMenu() {
    if (!_scaffoldKey.value.currentState!.isDrawerOpen) {
      _scaffoldKey.value.currentState!.openDrawer();
    }
  }

  increment(int value) {
    index = value.obs;
    update();
  }
}
