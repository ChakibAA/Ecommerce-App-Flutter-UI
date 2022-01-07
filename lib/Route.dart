// ignore_for_file: file_names
import 'package:get/get.dart';

import 'Screen/Auth/ForgetPass.dart';
import 'Screen/Auth/Login.dart';
import 'Screen/Auth/Sign.dart';
import 'Screen/Cart/CartScreen.dart';
import 'Screen/MainScreen.dart';
import 'Screen/Prdouct/ProductInfo.dart';

final List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => MainScreen(),
  ),
  GetPage(
    name: '/ProductInfo',
    page: () => ProductInfo(),
  ),
  GetPage(
    name: '/Cart',
    page: () => CartScreen(),
  ),
  GetPage(
    name: '/Login',
    page: () => const Login(),
  ),
  GetPage(
    name: '/Sign',
    page: () => const Sign(),
  ),
  GetPage(
    name: '/Forget',
    page: () => const ForgetPass(),
  ),
];
