import 'package:flutter/material.dart';

class Special {
  int count;
  List<Row> rows;

  Special({this.count, this.rows});

  factory Special.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['rows'] as List;
    print(list.runtimeType);
    List<Row> imagesList = list.map((i) => Row.fromJson(i)).toList();

    return Special(count: parsedJson['count'], rows: imagesList);
  }
}

class Row {
  int id;
  String name;

  Row({this.id, this.name});

  factory Row.fromJson(Map<String, dynamic> parsedJson) {
    return Row(id: parsedJson['id'], name: parsedJson['name']);
  }
}
