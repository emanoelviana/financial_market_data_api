import 'dart:convert';
import 'financial_data_model.dart';

class ResultsModel {
  String currency;
  num twoHundredDayAverage;
  num twoHundredDayAverageChange;
  num twoHundredDayAverageChangePercent;
  num marketCap;
  String shortName;
  String longName;
  num regularMarketChange;
  num regularMarketChangePercent;
  String regularMarketTime;
  num regularMarketPrice;
  num regularMarketDayHigh;
  String regularMarketDayRange;
  num regularMarketDayLow;
  num regularMarketVolume;
  num regularMarketPreviousClose;
  num regularMarketOpen;
  num averageDailyVolume3Month;
  num averageDailyVolume10Day;
  num fiftyTwoWeekLowChange;
  num fiftyTwoWeekLowChangePercent;
  String fiftyTwoWeekRange;
  num fiftyTwoWeekHighChange;
  num fiftyTwoWeekHighChangePercent;
  num fiftyTwoWeekLow;
  num fiftyTwoWeekHigh;
  String symbol;
  FinancialDataModel financialData;
  
  ResultsModel({
    required this.currency,
    required this.twoHundredDayAverage,
    required this.twoHundredDayAverageChange,
    required this.twoHundredDayAverageChangePercent,
    required this.marketCap,
    required this.shortName,
    required this.longName,
    required this.regularMarketChange,
    required this.regularMarketChangePercent,
    required this.regularMarketTime,
    required this.regularMarketPrice,
    required this.regularMarketDayHigh,
    required this.regularMarketDayRange,
    required this.regularMarketDayLow,
    required this.regularMarketVolume,
    required this.regularMarketPreviousClose,
    required this.regularMarketOpen,
    required this.averageDailyVolume3Month,
    required this.averageDailyVolume10Day,
    required this.fiftyTwoWeekLowChange,
    required this.fiftyTwoWeekLowChangePercent,
    required this.fiftyTwoWeekRange,
    required this.fiftyTwoWeekHighChange,
    required this.fiftyTwoWeekHighChangePercent,
    required this.fiftyTwoWeekLow,
    required this.fiftyTwoWeekHigh,
    required this.symbol,
    required this.financialData,
  });

  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'twoHundredDayAverage': twoHundredDayAverage,
      'twoHundredDayAverageChange': twoHundredDayAverageChange,
      'twoHundredDayAverageChangePercent': twoHundredDayAverageChangePercent,
      'marketCap': marketCap,
      'shortName': shortName,
      'longName': longName,
      'regularMarketChange': regularMarketChange,
      'regularMarketChangePercent': regularMarketChangePercent,
      'regularMarketTime': regularMarketTime,
      'regularMarketPrice': regularMarketPrice,
      'regularMarketDayHigh': regularMarketDayHigh,
      'regularMarketDayRange': regularMarketDayRange,
      'regularMarketDayLow': regularMarketDayLow,
      'regularMarketVolume': regularMarketVolume,
      'regularMarketPreviousClose': regularMarketPreviousClose,
      'regularMarketOpen': regularMarketOpen,
      'averageDailyVolume3Month': averageDailyVolume3Month,
      'averageDailyVolume10Day': averageDailyVolume10Day,
      'fiftyTwoWeekLowChange': fiftyTwoWeekLowChange,
      'fiftyTwoWeekLowChangePercent': fiftyTwoWeekLowChangePercent,
      'fiftyTwoWeekRange': fiftyTwoWeekRange,
      'fiftyTwoWeekHighChange': fiftyTwoWeekHighChange,
      'fiftyTwoWeekHighChangePercent': fiftyTwoWeekHighChangePercent,
      'fiftyTwoWeekLow': fiftyTwoWeekLow,
      'fiftyTwoWeekHigh': fiftyTwoWeekHigh,
      'symbol': symbol,
      'financialData': financialData.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory ResultsModel.fromMap(Map<String, dynamic> map) {
    return ResultsModel(
      currency: (map['currency'] ?? ''),
      twoHundredDayAverage: (map['twoHundredDayAverage'] ?? 0),
      twoHundredDayAverageChange: (map['twoHundredDayAverageChange'] ?? 0),
      twoHundredDayAverageChangePercent: (map['twoHundredDayAverageChangePercent'] ?? 0),
      marketCap: (map['marketCap'] ?? 0),
      shortName: (map['shortName'] ?? ''),
      longName: (map['longName'] ?? ''),
      regularMarketChange: (map['regularMarketChange'] ?? 0),
      regularMarketChangePercent: (map['regularMarketChangePercent'] ?? 0),
      regularMarketTime: (map['regularMarketTime'] ?? ''),
      regularMarketPrice: (map['regularMarketPrice'] ?? 0),
      regularMarketDayHigh: (map['regularMarketDayHigh'] ?? 0),
      regularMarketDayRange: (map['regularMarketDayRange'] ?? ''),
      regularMarketDayLow: (map['regularMarketDayLow'] ?? 0),
      regularMarketVolume: (map['regularMarketVolume'] ?? 0),
      regularMarketPreviousClose: (map['regularMarketPreviousClose'] ?? 0),
      regularMarketOpen: (map['regularMarketOpen'] ?? 0),
      averageDailyVolume3Month: (map['averageDailyVolume3Month'] ?? 0),
      averageDailyVolume10Day: (map['averageDailyVolume10Day'] ?? 0),
      fiftyTwoWeekLowChange: (map['fiftyTwoWeekLowChange'] ?? 0),
      fiftyTwoWeekLowChangePercent: (map['fiftyTwoWeekLowChangePercent'] ?? 0),
      fiftyTwoWeekRange: (map['fiftyTwoWeekRange'] ?? ''),
      fiftyTwoWeekHighChange: (map['fiftyTwoWeekHighChange'] ?? 0),
      fiftyTwoWeekHighChangePercent: (map['fiftyTwoWeekHighChangePercent'] ?? 0),
      fiftyTwoWeekLow: (map['fiftyTwoWeekLow'] ?? 0),
      fiftyTwoWeekHigh: (map['fiftyTwoWeekHigh'] ?? 0),
      symbol: (map['symbol'] ?? ''),
      financialData: FinancialDataModel.fromMap(map['financialData'] ?? {})
    );
  }

  factory ResultsModel.fromJson(String json) => ResultsModel.fromMap(jsonDecode(json));

}