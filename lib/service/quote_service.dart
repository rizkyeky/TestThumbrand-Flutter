part of 'service.dart';

class QuoteService {

  final List<Quote> _quotes = [];
  List<Quote> get quotes => _quotes;

  Future<void> init() async {
    await _parseJson();
  }

  Future<String> _loadFromAsset() async {
    return rootBundle.loadString("assets/quotes.json");
  }

  Future<void> _parseJson() async {
    final List<Map> json = jsonDecode(await _loadFromAsset()) as List<Map>;
    for (int i = 0; i < json.length; i++) {
      _quotes.add(Quote.fromJson(i, json[i] as Map<String, dynamic>));
    }
  }
}