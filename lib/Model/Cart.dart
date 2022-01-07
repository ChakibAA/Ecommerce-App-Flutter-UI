// ignore_for_file: file_names

import 'Adresse.dart';

class Cart {
  Adresse? adresse;
  String? email;
  String? name;
  String? surname;
  String? phone;
  String? uid;
  List<ProductCard>? products;
}

class ProductCard {
  String? id;
  String? image;
  String? price;
  String? quantity;
  String? store;
  String? title;
  String? uid;
}
