import 'package:adaptivelayout/models/list_item.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final Function(ListItem)? onItemSelection;

  const ItemsList({
    super.key,
    this.onItemSelection,
  });

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = ListItem.exampleData();

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, index) {
        ListItem item = items[index];

        return ListTile(
          title: Text(item.name),
          trailing: Icon(
            Icons.square_rounded,
            color: item.color,
          ),
          onTap: () {
            // Ejecutamos la función que pasa como parámetro al Widget
            // y le pasamos el item seleccionado como argumento.
            onItemSelection?.call(item);
          },
        );
      },
    );
  }
}
