// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uzumModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UzumModelAdapter extends TypeAdapter<UzumModel> {
  @override
  final int typeId = 0;

  @override
  UzumModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UzumModel(
      status: fields[0] as bool,
      list1: (fields[1] as List).cast<List1>(),
      yozgisavdo: (fields[2] as List).cast<Yangi>(),
      top: (fields[3] as List).cast<Yangi>(),
      yangi: (fields[4] as List).cast<Yangi>(),
    );
  }

  @override
  void write(BinaryWriter writer, UzumModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.list1)
      ..writeByte(2)
      ..write(obj.yozgisavdo)
      ..writeByte(3)
      ..write(obj.top)
      ..writeByte(4)
      ..write(obj.yangi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UzumModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class List1Adapter extends TypeAdapter<List1> {
  @override
  final int typeId = 1;

  @override
  List1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return List1(
      img: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, List1 obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is List1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class YangiAdapter extends TypeAdapter<Yangi> {
  @override
  final int typeId = 2;

  @override
  Yangi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Yangi(
      img: fields[0] as String,
      title: fields[1] as String,
      narx: fields[2] as String,
      chegirma: fields[3] as String,
      oyiga: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Yangi obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.img)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.narx)
      ..writeByte(3)
      ..write(obj.chegirma)
      ..writeByte(4)
      ..write(obj.oyiga);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is YangiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
