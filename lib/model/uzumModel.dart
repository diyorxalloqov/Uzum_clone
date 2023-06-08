// To parse this JSON data, do
//
//     final uzumModel = uzumModelFromJson(jsonString);


import 'dart:convert';

import 'package:hive/hive.dart';

part 'uzumModel.g.dart';


UzumModel uzumModelFromJson(String str) => UzumModel.fromJson(json.decode(str));

String uzumModelToJson(UzumModel data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class UzumModel {
  @HiveField(0)
  bool status;
  @HiveField(1)
  List<List1> list1;
  @HiveField(2)
  List<Yangi> yozgisavdo;
  @HiveField(3)
  List<Yangi> top;
  @HiveField(4)
  List<Yangi> yangi;

  UzumModel({
    required this.status,
    required this.list1,
    required this.yozgisavdo,
    required this.top,
    required this.yangi,
  });

  factory UzumModel.fromJson(Map<String, dynamic> json) => UzumModel(
        status: json["status"],
        list1: List<List1>.from(json["List1"].map((x) => List1.fromJson(x))),
        yozgisavdo:
            List<Yangi>.from(json["yozgisavdo"].map((x) => Yangi.fromJson(x))),
        top: List<Yangi>.from(json["top"].map((x) => Yangi.fromJson(x))),
        yangi: List<Yangi>.from(json["Yangi"].map((x) => Yangi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "List1": List<dynamic>.from(list1.map((x) => x.toJson())),
        "yozgisavdo": List<dynamic>.from(yozgisavdo.map((x) => x.toJson())),
        "top": List<dynamic>.from(top.map((x) => x.toJson())),
        "Yangi": List<dynamic>.from(yangi.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 1)
class List1 {
  @HiveField(0)
  String img;

  List1({
    required this.img,
  });

  factory List1.fromJson(Map<String, dynamic> json) => List1(
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
      };
}

@HiveType(typeId: 2)
class Yangi {
  @HiveField(0)
  String img;
  @HiveField(1)
  String title;
  @HiveField(2)
  String narx;
  @HiveField(3)
  String chegirma;
  @HiveField(4)
  String oyiga;

  Yangi({
    required this.img,
    required this.title,
    required this.narx,
    required this.chegirma,
    required this.oyiga,
  });

  factory Yangi.fromJson(Map<String, dynamic> json) => Yangi(
        img: json["img"],
        title: json["title"],
        narx: json["narx"],
        chegirma: json["Chegirma"],
        oyiga: json["oyiga"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
        "title": title,
        "narx": narx,
        "Chegirma": chegirma,
        "oyiga": oyiga,
      };
}
