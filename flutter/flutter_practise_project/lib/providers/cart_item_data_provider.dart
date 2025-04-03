import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_practise_project/models/services/user.dart';

class CartItemDataProvider extends ChangeNotifier {
  final List<User> _items = [];

  UnmodifiableListView<User> get items => UnmodifiableListView(_items);

  void addToCart(User user) {
    _items.add(user);
    print("${items.length} Cart Items Count");
    notifyListeners();
  }
}
