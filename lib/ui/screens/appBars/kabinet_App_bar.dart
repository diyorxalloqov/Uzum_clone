import 'package:flutter/material.dart';

class KabinetAppBar extends StatelessWidget {
  const KabinetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Kabinet"),
    );
  }
}