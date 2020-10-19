part of 'model.dart';

class Quote {
  final int id;
  final String author;
  final String texts;

  Quote(this.id, this.author, this.texts);

  factory Quote.initial() => Quote(0, '', '');

  factory Quote.fromJson(int id, Map<String, dynamic> json) => Quote(
    id,
    json['quoteAuthor'] as String,
    json['quoteText'] as String
  );
}