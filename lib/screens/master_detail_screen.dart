import 'package:adaptivelayout/layouts/master_detail_large.dart';
import 'package:adaptivelayout/layouts/master_detail_small.dart';
import 'package:flutter/material.dart';

class MasterDetailScreen extends StatefulWidget {
  const MasterDetailScreen({super.key});

  @override
  State<MasterDetailScreen> createState() => _MasterDetailScreenState();
}

class _MasterDetailScreenState extends State<MasterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLarge = MediaQuery.of(context).size.width > 900;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Detail'),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
      body: isLarge
          ? const MasterDetailLargeLayout()
          : const MasterDetailSmallLayout(),
    );
  }
}
