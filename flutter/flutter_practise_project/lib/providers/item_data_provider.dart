import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/provider/itemdata.dart';

class ItemDataProvider with ChangeNotifier {
  final List<Item> _items = [
    Item(item: 'Sleep', completed: false),
    Item(
      item: 'Read',
      completed: true,
    )
  ];
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  get size => _items.length;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void toggleItem(Item item) {
    item.toggle();
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
