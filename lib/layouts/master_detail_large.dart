import 'package:adaptivelayout/models/list_item.dart';
import 'package:adaptivelayout/components/item_detail.dart';
import 'package:adaptivelayout/components/items_list.dart';
import 'package:flutter/material.dart';

class MasterDetailLargeLayout extends StatefulWidget {
  const MasterDetailLargeLayout({super.key});

  @override
  State<MasterDetailLargeLayout> createState() =>
      _MasterDetailLargeLayoutState();
}

class _MasterDetailLargeLayoutState extends State<MasterDetailLargeLayout> {
  ListItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 300,
          child: ItemsList(
            onItemSelection: (ListItem item) {
              selectedItem = item;
              setState(() {});
            },
          ),
        ),
        const VerticalDivider(width: 1),
        Expanded(
          child: selectedItem != null
              ? ItemDetail(
                  item: selectedItem!,
                )
              : const Center(
                  child: Text('No hay elemento seleccionado'),
                ),
        ),
      ],
    );
  }
}
