import 'dart:convert';

class CoinModel {
  String currency;
  num currencyRateFromUSD;
  String coinName;
  String coin;
  num regularMarketChange;
  num regularMarketPrice;
  num regularMarketChangePercent;
  num regularMarketDayLow;
  num regularMarketDayHigh;
  String regularMarketDayRange;
  num regularMarketVolume;
  num marketCap;
  String regularMarketTime;
  String coinImageUrl;

  CoinModel({
    required this.currency,
    required this.currencyRateFromUSD,
    required this.coinName,
    required this.coin,
    required this.regularMarketChange,
    required this.regularMarketPrice,
    required this.regularMarketChangePercent,
    required this.regularMarketDayLow,
    required this.regularMarketDayHigh,
    required this.regularMarketDayRange,
    required this.regularMarketVolume,
    required this.marketCap,
    required this.regularMarketTime,
    required this.coinImageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'currencyRateFromUSD': currencyRateFromUSD,
      'coinName': coinName,
      'coin': coin,
      'regularMarketChange': regularMarketChange,
      'regularMarketPrice': regularMarketPrice,
      'regularMarketChangePercent': regularMarketChangePercent,
      'regularMarketDayLow': regularMarketDayLow,
      'regularMarketDayHigh': regularMarketDayHigh,
      'regularMarketDayRange': regularMarketDayRange,
      'regularMarketVolume': regularMarketVolume,
      'marketCap': marketCap,
      'regularMarketTime': regularMarketTime,
      'coinImageUrl': coinImageUrl,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory CoinModel.fromMap(Map<String, dynamic> map) {
    return CoinModel(
      currency: map['currency'] ?? '',
      currencyRateFromUSD: map['currencyRateFromUSD'] ?? 0,
      coinName: map['coinName'] ?? '',
      coin: map['coin'] ?? '',
      regularMarketChange: map['regularMarketChange'] ?? 0,
      regularMarketPrice: map['regularMarketPrice'] ?? 0,
      regularMarketChangePercent: map['regularMarketChangePercent'] ?? 0,
      regularMarketDayLow: map['regularMarketDayLow'] ?? 0,
      regularMarketDayHigh: map['regularMarketDayHigh'] ?? 0,
      regularMarketDayRange: map['regularMarketDayRange'] ?? '',
      regularMarketVolume: map['regularMarketVolume'] ?? 0,
      marketCap: map['marketCap'] ?? 0,
      regularMarketTime: map['regularMarketTime'] ?? '',
      coinImageUrl: map['coinImageUrl'] ?? '',
    );
  }

  factory CoinModel.fromJson(String json) => CoinModel.fromMap(jsonDecode(json));
}