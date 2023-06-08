import 'package:flutter/material.dart';

class KatalogAppBar extends StatelessWidget {
  const KatalogAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Katalog"),
    );
  }
}