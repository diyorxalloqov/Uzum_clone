import 'package:flutter/material.dart';
import 'package:uzum_clone/ui/screens/appBars/BoshSahifaApp_Bar.dart';
import 'package:uzum_clone/ui/screens/appBars/KatalogApp_Bar.dart';
import 'package:uzum_clone/ui/screens/appBars/istaklar_App_bar.dart';
import 'package:uzum_clone/ui/screens/appBars/kabinet_App_bar.dart';
import 'package:uzum_clone/ui/screens/appBars/savat_App_Bar.dart';
import 'package:uzum_clone/ui/screens/Bottom_tabs/BoshSahifa.dart';
import 'package:uzum_clone/ui/screens/Bottom_tabs/Istaklar.dart';
import 'package:uzum_clone/ui/screens/Bottom_tabs/Kabinet.dart';
import 'package:uzum_clone/ui/screens/Bottom_tabs/Katalog.dart';
import 'package:uzum_clone/ui/screens/Bottom_tabs/Savat.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _screens = const [
    BoshSahifa(),
    Katalog(),
    Savat(),
    Istaklar(),
    Kabinet()
  ];

  final List _appBars = const [
    BoshAppBar(),
    KatalogAppBar(),
    SavatAppBar(),
    IstaklarAppBar(),
    KabinetAppBar()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: _appBars[_currentIndex],
          preferredSize: const Size(double.infinity, 60)),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/logo.png",
                  width: 25,
                ),
                label: "Bosh Sahifa"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Katalog"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Savat"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Istaklar"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined), label: "Kabinet"),
          ],
          onTap: (v) {
            _currentIndex = v;
            setState(() {});
          }),
    );
  }
}
