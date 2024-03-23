import 'dart:convert';

class FinancialDataModel {
  num currentPrice;
  num targetHighPrice;
  num targetLowPrice;
  num targetMeanPrice;
  num targetMedianPrice;
  num recommendationMean;
  String recommendationKey;
  num numberOfAnalystOpinions;
  num totalCash;
  num totalCashPerShare;
  num ebitda;
  num totalDebt;
  num quickRatio;
  num currentRatio;
  num totalRevenue;
  num debtToEquity;
  num revenuePerShare;
  num returnOnAssets;
  num returnOnEquity;
  num grossProfits;
  num freeCashflow;
  num operatingCashflow;
  num earningsGrowth;
  num revenueGrowth;
  num grossMargins;
  num ebitdaMargins;
  num operatingMargins;
  num profitMargins;
  String financialCurrency;

  FinancialDataModel({
    required this.currentPrice,
    required this.targetHighPrice,
    required this.targetLowPrice,
    required this.targetMeanPrice,
    required this.targetMedianPrice,
    required this.recommendationMean,
    required this.recommendationKey,
    required this.numberOfAnalystOpinions,
    required this.totalCash,
    required this.totalCashPerShare,
    required this.ebitda,
    required this.totalDebt,
    required this.quickRatio,
    required this.currentRatio,
    required this.totalRevenue,
    required this.debtToEquity,
    required this.revenuePerShare,
    required this.returnOnAssets,
    required this.returnOnEquity,
    required this.grossProfits,
    required this.freeCashflow,
    required this.operatingCashflow,
    required this.earningsGrowth,
    required this.revenueGrowth,
    required this.grossMargins,
    required this.ebitdaMargins,
    required this.operatingMargins,
    required this.profitMargins,
    required this.financialCurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPrice': currentPrice,
      'targetHighPrice': targetHighPrice,
      'targetLowPrice': targetLowPrice,
      'targetMeanPrice': targetMeanPrice,
      'targetMedianPrice': targetMedianPrice,
      'recommendationMean': recommendationMean,
      'recommendationKey': recommendationKey,
      'numberOfAnalystOpinions': numberOfAnalystOpinions,
      'totalCash': totalCash,
      'totalCashPerShare': totalCashPerShare,
      'ebitda': ebitda,
      'totalDebt': totalDebt,
      'quickRatio': quickRatio,
      'currentRatio': currentRatio,
      'totalRevenue': totalRevenue,
      'debtToEquity': debtToEquity,
      'revenuePerShare': revenuePerShare,
      'returnOnAssets': returnOnAssets,
      'returnOnEquity': returnOnEquity,
      'grossProfits': grossProfits,
      'freeCashflow': freeCashflow,
      'operatingCashflow': operatingCashflow,
      'earningsGrowth': earningsGrowth,
      'revenueGrowth': revenueGrowth,
      'grossMargins': grossMargins,
      'ebitdaMargins': ebitdaMargins,
      'operatingMargins': operatingMargins,
      'profitMargins': profitMargins,
      'financialCurrency': financialCurrency,
    };
  }

  factory FinancialDataModel.fromMap(Map<String, dynamic> map) {
    return FinancialDataModel(
      currentPrice: (map['currentPrice'] ?? 0) as num,
      targetHighPrice: (map['targetHighPrice'] ?? 0) as num,
      targetLowPrice: (map['targetLowPrice'] ?? 0) as num,
      targetMeanPrice: (map['targetMeanPrice'] ?? 0) as num,
      targetMedianPrice: (map['targetMedianPrice'] ?? 0) as num,
      recommendationMean: (map['recommendationMean'] ?? 0) as num,
      recommendationKey: (map['recommendationKey'] ?? '') as String,
      numberOfAnalystOpinions: (map['numberOfAnalystOpinions'] ?? 0) as num,
      totalCash: (map['totalCash'] ?? 0) as num,
      totalCashPerShare: (map['totalCashPerShare'] ?? 0) as num,
      ebitda: (map['ebitda'] ?? 0) as num,
      totalDebt: (map['totalDebt'] ?? 0) as num,
      quickRatio: (map['quickRatio'] ?? 0) as num,
      currentRatio: (map['currentRatio'] ?? 0) as num,
      totalRevenue: (map['totalRevenue'] ?? 0) as num,
      debtToEquity: (map['debtToEquity'] ?? 0) as num,
      revenuePerShare: (map['revenuePerShare'] ?? 0) as num,
      returnOnAssets: (map['returnOnAssets'] ?? 0) as num,
      returnOnEquity: (map['returnOnEquity'] ?? 0) as num,
      grossProfits: (map['grossProfits'] ?? 0) as num,
      freeCashflow: (map['freeCashflow'] ?? 0) as num,
      operatingCashflow: (map['operatingCashflow'] ?? 0) as num,
      earningsGrowth: (map['earningsGrowth'] ?? 0) as num,
      revenueGrowth: (map['revenueGrowth'] ?? 0) as num,
      grossMargins: (map['grossMargins'] ?? 0) as num,
      ebitdaMargins: (map['ebitdaMargins'] ?? 0) as num,
      operatingMargins: (map['operatingMargins'] ?? 0) as num,
      profitMargins: (map['profitMargins'] ?? 0) as num,
      financialCurrency: (map['financialCurrency'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinancialDataModel.fromJson(String source) => FinancialDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}