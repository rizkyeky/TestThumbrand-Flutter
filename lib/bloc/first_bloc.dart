part of 'bloc.dart';

class FirstBloc implements Bloc {

  final QuoteService _quoteService = locator
    .get<QuoteService>();

  final Random _random = Random();

  final ValueNotifier<int> notifierColorIndex = ValueNotifier(0);
  ValueNotifier<Quote> notifierQuote = ValueNotifier(Quote.initial());
  
  @override
  void dispose() {}

  @override
  void init() {
    notifierQuote.value = _getQuoteFromService();
  }

  Quote _getQuoteFromService() {
    return _quoteService.quotes[_random.nextInt(10)];
  }

  void refersh() {
    notifierColorIndex.value = List.generate(5, (i) => i)[_random.nextInt(5)];
    notifierQuote.value = _getQuoteFromService();
  }


}