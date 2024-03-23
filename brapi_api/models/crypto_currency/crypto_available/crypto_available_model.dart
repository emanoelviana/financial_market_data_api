import 'dart:convert';

class CryptoAvailableModel {
  List<String> coins;

  CryptoAvailableModel({
    required this.coins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coins': coins,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory CryptoAvailableModel.fromMap(Map<String, dynamic> map) {
    return CryptoAvailableModel(
      coins: List<String>.from(map['coins'] ?? ''),
    );
  }

  factory CryptoAvailableModel.fromJson(String json) => CryptoAvailableModel.fromMap(jsonDecode(json));
}