import 'package:flutter/material.dart';
import 'package:flutter_practise_project/providers/item_data_provider.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ItemDataProvider>(builder: (context, data, child) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: data.size,
          itemBuilder: (context, index) {
            final item = data.items[index];
            return GestureDetector(
              onLongPress: () => data.removeItem(item),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Text(item.item[0]),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.item,
                        style: TextStyle(
                            decoration: item.completed
                                ? TextDecoration.lineThrough
                                : null,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Checkbox(
                        value: item.completed,
                        onChanged: (c) => data.toggleItem(item),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
