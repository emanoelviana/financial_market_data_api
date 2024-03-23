import 'dart:convert';

class AvailableTickersModel {
  List<String> indexes;
  List<String> stocks;

  AvailableTickersModel({
    required this.indexes,
    required this.stocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': indexes,
      'stocks': stocks,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory AvailableTickersModel.fromMap(Map<String, dynamic> map) {
    return AvailableTickersModel(
      indexes: List<String>.from(map['indexes'] ?? <String>[]),
      stocks: List<String>.from(map['stocks'] ?? <String>[]),
    );
  }

  factory AvailableTickersModel.fromJson(String json) => AvailableTickersModel.fromMap(jsonDecode(json));
}