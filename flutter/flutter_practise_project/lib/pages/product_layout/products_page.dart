// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter_practise_project/models/product_lay_out/product.dart';

import '../../widgets/ratingbox.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
          name: "iPhone",
          description: "iPhone is the stylist phone ever",
          price: 1000,
          image: "./assets/iphone.jpg"),
      Product(
          name: "Pixel",
          description: "Pixel is the most featureful phone ever",
          price: 800,
          image: "./assets/pixel.jpg"),
      Product(
          name: "Laptop",
          description: "Laptop is most productive development tool",
          price: 2000,
          image: "./assets/laptop.jpg"),
      Product(
          name: "Tablet",
          description: "Tablet is the most useful device ever for meeting",
          price: 1500,
          image: "./assets/tablet.jpg"),
      Product(
          name: "Pendrive",
          description: "Pendrive is useful storage medium",
          price: 100,
          image: "./assets/pendrive.jpg"),
      Product(
          name: "Floppy Drive",
          description: "Floppy drive is useful rescue storage medium",
          price: 20,
          image: "./assets/floppydisk.jpg"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          Product currentProduct = products[index];
          return ListTile(
            leading: Image(
              image: AssetImage(currentProduct.image),
            ),
            title: Text(currentProduct.name),
            subtitle: Column(
              children: [
                Text(currentProduct.description),
                RatingBox(),
              ],
            ),
            trailing: Text('Price: ${currentProduct.price}'),
          );
        },
      ),
    );
  }
}
