import 'package:flutter/material.dart';

class SavatAppBar extends StatelessWidget {
  const SavatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Savat"),
    );
  }
}