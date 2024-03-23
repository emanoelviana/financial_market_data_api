import 'dart:convert';

class IndexesModel {
  String stock;
  String name;

  IndexesModel({
    required this.stock,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stock': stock,
      'name': name,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory IndexesModel.fromMap(Map<String, dynamic> map) {
    return IndexesModel(
      stock: map['stock'] ?? '',
      name: map['name'] ?? '',
    );
  }

  factory IndexesModel.fromJson(String json) =>
      IndexesModel.fromMap(jsonDecode(json));
}