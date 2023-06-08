// import 'dart:io';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:uzum_clone/model/uzumModel.dart';
// import 'package:uzum_clone/service/uzumService.dart';

// class UzumDB {
//   UzumService uzumService = UzumService();
//   Box<UzumModel>? uzumBox;

//   Future<dynamic> checkBox() async {
//     await openBox();
//     if (uzumBox!.isNotEmpty) {
//       return uzumBox!.get("uzum");
//     } else {
//       return getUzumData();
//     }
//   }

//   Future<dynamic> getUzumData() async {
//     dynamic response = await uzumService.getUzum();
//     if (response is UzumModel) {
//       await openBox();
//       await writeToDB(response);
//       return uzumBox?.get("uzum");
//     } else {
//       return response;
//     }
//   }

//   static void registerAdapter() {
//     Hive.registerAdapter(UzumModelAdapter());
//     Hive.registerAdapter(List1Adapter());
//     Hive.registerAdapter(YangiAdapter());
//   }

//   Future<void> openBox() async {
//     Directory appDocDir = await getApplicationDocumentsDirectory();
//     Hive.init(appDocDir.path);
//     uzumBox = await Hive.openBox("DB");
//   }

//   Future<void> writeToDB(UzumModel model) async {
//     print(model.list1.length);
//     print("Hello");
//     await uzumBox!.put("uzum", model);
//   }
// }
