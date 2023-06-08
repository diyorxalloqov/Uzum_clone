import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:uzum_clone/core/router/router.dart';
// import 'package:uzum_clone/db/UzumDB.dart';
import 'package:uzum_clone/ui/Pages/splashPage.dart';

void main(List<String> args) {
  // Hive.initFlutter();
  // UzumDB.registerAdapter();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteList.router.onGenerate,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
