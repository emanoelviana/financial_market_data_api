import 'dart:convert';
import 'models/indexes_model.dart';
import 'models/stocks_model.dart';

class QuoteListModel {
  List<IndexesModel> indexes;
  List<StocksModel> stocks;
  List<String> availableSectors;
  List<String> availableStockTypes;
  int currentPage;
  int totalPages;
  int itemsPerPage;
  int totalCount;
  bool hasNextPage;

  QuoteListModel({
    required this.indexes,
    required this.stocks,
    required this.availableSectors,
    required this.availableStockTypes,
    required this.currentPage,
    required this.totalPages,
    required this.itemsPerPage,
    required this.totalCount,
    required this.hasNextPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': indexes.map((index) => index.toMap()).toList(),
      'stocks': stocks.map((stock) => stock.toMap()).toList(),
      'availableSectors': availableSectors,
      'availableStockTypes': availableStockTypes,
      'currentPage': currentPage,
      'totalPages': totalPages,
      'itemsPerPage': itemsPerPage,
      'totalCount': totalCount,
      'hasNextPage': hasNextPage,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory QuoteListModel.fromMap(Map<String, dynamic> map) {
    return QuoteListModel(
      indexes: map['indexes'].map<IndexesModel>((index) => IndexesModel.fromMap(index)).toList() ?? <IndexesModel> {},
      stocks: map['stocks'].map<StocksModel>((stock) => StocksModel.fromMap(stock)).toList() ?? <StocksModel> {},
      availableSectors: List<String>.from(map['availableSectors'] ?? <String> []),
      availableStockTypes: List<String>.from(map['availableStockTypes'] ?? <String> []),
      currentPage: map['currentPage'] ?? 0,
      totalPages: map['totalPages'] ?? 0,
      itemsPerPage: map['itemsPerPage'] ?? 0,
      totalCount: map['totalCount'] ?? 0,
      hasNextPage: map['hasNextPage'] ?? false,
    );
  }

  factory QuoteListModel.fromJson(String json) => QuoteListModel.fromMap(jsonDecode(json));
}