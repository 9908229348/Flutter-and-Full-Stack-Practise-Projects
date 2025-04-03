import 'package:flutter/material.dart';
import 'package:flutter_practise_project/pages/product_layout/products_page.dart';
import 'package:flutter_practise_project/pages/restapi/users_page.dart';
import 'package:flutter_practise_project/pages/tabbar_animations/tabbar_home.dart';
import 'package:flutter_practise_project/providers/cart_item_data_provider.dart';
import 'package:flutter_practise_project/providers/item_data_provider.dart';
import 'package:provider/provider.dart';

import 'pages/dialog_box/dialogbox.dart';
import 'pages/provider/provider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ItemDataProvider()),
        ChangeNotifierProvider(create: (context)=> CartItemDataProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Text(
            'Products_layout',
            style: TextStyle(fontSize: 25),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProductsPage()));
          },
        ),
        GestureDetector(
          child: Text(
            'DialogBox',
            style: TextStyle(fontSize: 25),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dialogbox()));
          },
        ),
        GestureDetector(
          child: Text(
            'Tabbar_animations',
            style: TextStyle(fontSize: 25),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabbarHome()));
          },
        ),
        GestureDetector(
          child: Text(
            'Rest api',
            style: TextStyle(fontSize: 25),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UsersPage()));
          },
        ),
        GestureDetector(
          child: Text(
            'Provider',
            style: TextStyle(fontSize: 25),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ItemList()));
          },
        ),
      ],
    );
  }
}
