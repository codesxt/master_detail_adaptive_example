import 'package:adaptivelayout/models/list_item.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final ListItem item;

  const ItemDetail({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: item.color,
      child: Center(
        child: Text(
          item.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
