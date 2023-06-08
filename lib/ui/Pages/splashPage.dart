import 'package:flutter/material.dart';
import 'package:uzum_clone/ui/Pages/HomePage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) =>  Home()),
              (route) => false,
            ));
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Image.asset("assets/logo.png",width: 120),
              
              )),
    );
  }
}
