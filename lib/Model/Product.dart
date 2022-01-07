// ignore_for_file: file_names
class Product {
  List<dynamic>? img;
  String? imagePrin;
  String? title;
  dynamic price;
  String? category;
  dynamic commission;
  String? description;
  String? id;
  String? store;

  Product(
      {this.img,
      required this.price,
      required this.title,
      required this.imagePrin});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['images'];
    price = json['price'];
    category = json['category'];
    commission = json['commission'];
    id = json['id'];
    store = json['store'];
    description = json['description'];
    imagePrin = json['image'];
  }
}
