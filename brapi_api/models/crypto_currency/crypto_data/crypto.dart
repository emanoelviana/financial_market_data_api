import 'dart:convert';
import 'models/coin_model.dart';

class Crypto {
  List<CoinModel> coins;

  Crypto({
    required this.coins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coins': coins.map((coin) => coin.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Crypto.fromMap(Map<String, dynamic> map) {
    return Crypto(
      coins: map['coins'].map<CoinModel>((coin) => CoinModel.fromMap(coin)).toList() ?? <CoinModel> {},
    );
  }

  factory Crypto.fromJson(String json) => Crypto.fromMap(jsonDecode(json));
}