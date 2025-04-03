import 'package:flutter/material.dart';
import 'package:flutter_practise_project/pages/restapi/cart_items_page.dart';
import 'package:flutter_practise_project/providers/cart_item_data_provider.dart';
import 'package:flutter_practise_project/services/users_service.dart';
import 'package:provider/provider.dart';

import '../../models/services/user.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  bool isLoading = false;
  late List<User> users;

  @override
  void initState() {
    super.initState();
    fethUsers();
  }

  fethUsers() async {
    setState(() {
      isLoading = true;
    });

    users = await UsersService.fetchUsers();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Users'),
            actions: [
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartItemsPage()));
              }, icon: Icon(Icons.card_travel))
            ],
          ),
          body: isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    User currentUser = users[index];
                    return ListTile(
                      trailing: IconButton(
                        onPressed: () {
                          context
                              .read<CartItemDataProvider>()
                              .addToCart(currentUser);
                        },
                        icon: isCartItem(users, currentUser)
                            ? Icon(Icons.shop)
                            : Icon(Icons.arrow_back),
                      ),
                      title: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.blue),
                        child: Column(
                          children: [
                            Text('Name: ${currentUser.name}'),
                            Text('Email: ${currentUser.email}'),
                            Text('Website: ${currentUser.website}'),
                            Text('id: ${currentUser.id}'),
                          ],
                        ),
                      ),
                    );
                  })),
    );
  }

  bool isCartItem(dynamic users, User currentUser) {
    if (users.contains(currentUser)) {
      return true;
    } else {
      return false;
    }
  }
}
