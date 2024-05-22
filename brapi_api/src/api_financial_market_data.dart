import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/crypto_currency/crypto_available/crypto_available_model.dart';
import '../models/crypto_currency/crypto_data/crypto.dart';
import '../models/stocks/available/available_model.dart';
import '../models/stocks/quote_list/quote_list_model.dart';
import '../models/stocks/quote_ticker/quote_ticker_model.dart';

class FinancialMarketApi {
  /// Api Authentication
  static String token = 'vGJ223XSF2bvzY6hjT4nsN';
  final header = {'Authorization': 'Bearer $token'};

  /// Api Handler
  static String handler = 'https://brapi.dev/api/';

  /// Endpoints:
  // * Get Available Tickers
  Future<AvailableTickersModel> getAvailableTickers(
      {String search = ''}) async {
    final response = await http
        .get(Uri.parse('${handler}available?search=$search'), headers: header);
    final map = jsonDecode(response.body);
    final obj = AvailableTickersModel.fromMap(map);
    return obj;
  }

  // * Get Quote List
  Future<QuoteListModel> getQuoteList({String search = ''}) async {
    final response =
        await http.get(Uri.parse('${handler}quote/list?search=$search'));
    final map = jsonDecode(response.body);
    final obj = QuoteListModel.fromMap(map);
    return obj;
  }

  // * Get Quote by Ticker
  Future<QuoteTickerModel> getQuoteByTicker({required String ticker}) async {
    final response = await http.get(
        Uri.parse('${handler}quote/$ticker?modules=financialData'),
        headers: header);
    final map = jsonDecode(response.body);
    final obj = QuoteTickerModel.fromMap(map);
    return obj;
  }

  // * Get Crypto Available
  Future<CryptoAvailableModel> getCryptoAvailable(
      {required String search}) async {
    final response = await http.get(Uri.parse('${handler}v2/crypto/available'),
        headers: header);
    final map = jsonDecode(response.body);
    final obj = CryptoAvailableModel.fromMap(map);
    return obj;
  }

  // * Get Crypto Data
  Future<Crypto> getCrypto({required String coin}) async {
    final response = await http.get(
        Uri.parse('${handler}v2/crypto?coin=$coin&currenct=BRL'),
        headers: header);
    final map = jsonDecode(response.body);
    final obj = Crypto.fromMap(map);
    return obj;
  }
}
