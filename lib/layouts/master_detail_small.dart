import 'package:adaptivelayout/models/list_item.dart';
import 'package:adaptivelayout/components/item_detail.dart';
import 'package:adaptivelayout/components/items_list.dart';
import 'package:flutter/material.dart';

class MasterDetailSmallLayout extends StatelessWidget {
  const MasterDetailSmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ItemsList(
      onItemSelection: (ListItem item) {
        MaterialPageRoute route = MaterialPageRoute(builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(item.name),
            ),
            body: ItemDetail(item: item),
          );
        });
        Navigator.of(context).push(route);
      },
    );
  }
}
