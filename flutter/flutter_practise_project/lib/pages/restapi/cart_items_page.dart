import 'package:flutter/material.dart';
import 'package:flutter_practise_project/models/services/user.dart';
import 'package:flutter_practise_project/providers/cart_item_data_provider.dart';
import 'package:provider/provider.dart';

class CartItemsPage extends StatefulWidget {
  const CartItemsPage({super.key});

  @override
  State<CartItemsPage> createState() => _CartItemsPageState();
}

class _CartItemsPageState extends State<CartItemsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartItemDataProvider>(
          builder: (context, cartItemDataProvider, child) {
        List<User> cartItems = cartItemDataProvider.items;
        return ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              User currentItem = cartItems[index];
              return ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.blue),
                  child: Column(
                    children: [
                      Text('Name: ${currentItem.name}'),
                      Text('Email: ${currentItem.email}'),
                      Text('Website: ${currentItem.website}'),
                      Text('id: ${currentItem.id}'),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
