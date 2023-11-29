import 'package:flutter/material.dart';

class ListItem {
  final String name;
  final Color color;

  ListItem({
    required this.name,
    required this.color,
  });

  static List<ListItem> exampleData() {
    return [
      ListItem(name: 'Contacto 1', color: Colors.blue),
      ListItem(name: 'Contacto 2', color: Colors.green),
      ListItem(name: 'Contacto 3', color: Colors.yellow),
      ListItem(name: 'Contacto 4', color: Colors.orange),
      ListItem(name: 'Contacto 5', color: Colors.red),
      ListItem(name: 'Contacto 6', color: Colors.blue),
      ListItem(name: 'Contacto 7', color: Colors.green),
      ListItem(name: 'Contacto 8', color: Colors.yellow),
      ListItem(name: 'Contacto 9', color: Colors.orange),
      ListItem(name: 'Contacto 10', color: Colors.red),
      ListItem(name: 'Contacto 11', color: Colors.blue),
      ListItem(name: 'Contacto 12', color: Colors.green),
      ListItem(name: 'Contacto 13', color: Colors.yellow),
      ListItem(name: 'Contacto 14', color: Colors.orange),
      ListItem(name: 'Contacto 15', color: Colors.red),
      ListItem(name: 'Contacto 16', color: Colors.blue),
      ListItem(name: 'Contacto 17', color: Colors.green),
      ListItem(name: 'Contacto 18', color: Colors.yellow),
      ListItem(name: 'Contacto 19', color: Colors.orange),
      ListItem(name: 'Contacto 20', color: Colors.red),
    ];
  }
}
