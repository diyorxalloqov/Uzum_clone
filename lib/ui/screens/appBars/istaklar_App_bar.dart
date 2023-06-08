import 'package:flutter/material.dart';

class IstaklarAppBar extends StatelessWidget {
  const IstaklarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Istaklar"),
    );
  }
}