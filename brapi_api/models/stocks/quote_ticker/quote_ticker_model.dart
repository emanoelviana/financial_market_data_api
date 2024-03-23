import 'dart:convert';
import 'models/results_model.dart';

class QuoteTickerModel {
  List<ResultsModel> results;
  String requestedAt;
  String took;

  QuoteTickerModel({
    required this.results,
    required this.requestedAt,
    required this.took,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': results.map((result) => result.toMap()).toList(),
      'requestedAt': requestedAt,
      'took': took,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory QuoteTickerModel.fromMap(Map<String, dynamic> map) {
    return QuoteTickerModel(
      results: map['results'].map<ResultsModel>((result) => ResultsModel.fromMap(result)).toList() ?? <ResultsModel> {},
      requestedAt: map['requestedAt'] ?? '',
      took: map['took'] ?? '',
    );
  }

  factory QuoteTickerModel.fromJson(String json) => QuoteTickerModel.fromMap(jsonDecode(json));
}