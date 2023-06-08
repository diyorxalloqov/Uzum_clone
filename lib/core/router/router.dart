import 'package:flutter/material.dart';
import 'package:uzum_clone/model/uzumModel.dart';
import 'package:uzum_clone/ui/category/info_screens/mashhur_info.dart';
import 'package:uzum_clone/ui/category/info_screens/yangi_info.dart';
import 'package:uzum_clone/ui/category/info_screens/yozgi_info.dart';

class RouteList {
  static final RouteList _generate = RouteList.init();
  static RouteList get router => _generate;

  RouteList.init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "yozgi":
        return _navigate( YozgiInfoPage(data1: settings.arguments as Yangi));
      case 'mashhur':
        return _navigate(MashhurInfoPage(data2: settings.arguments as Yangi,));
      case 'yangi':
        return _navigate(YangiInfoPage(data3: settings.arguments as Yangi,));
      default:
    }
    return null;
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: ((context) => widget));
  }
}
