import 'dart:convert';

class StocksModel {
  String stock;
  String name;
  num close;
  num change;
  num volume;
  num marketCap;
  String logo;
  String sector;
  String type;

  StocksModel({
    required this.stock,
    required this.name,
    required this.close,
    required this.change,
    required this.volume,
    required this.marketCap,
    required this.logo,
    required this.sector,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stock': stock,
      'name': name,
      'close': close,
      'change': change,
      'volume': volume,
      'market_cap': marketCap,
      'logo': logo,
      'sector': sector,
      'type': type,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory StocksModel.fromMap(Map<String, dynamic> map) {
    return StocksModel(
      stock: map['stock'] ?? '',
      name: map['name'] ?? '',
      close: map['close'] ?? 0,
      change: map['change'] ?? 0,
      volume: map['volume'] ?? 0,
      marketCap: map['market_cap'] ?? 0,
      logo: map['logo'] ?? '',
      sector: map['sector'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory StocksModel.fromJson(String json) => StocksModel.fromMap(jsonDecode(json));
}