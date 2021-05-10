import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  )
  );
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(text:"The purpose of our lives is to be happy.", author: "Dalai Lama"),
    Quote(text:"Life is what happens when you’re busy making other plans", author: "John Lennon"),
    Quote(text:"Get busy living or get busy dying.", author: " Stephen King"),
  ];

  // creating a function to return Quote Card

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // Map function will run on the list of quotes and return an iterable which is then converted to a list
        // children: quotes.map((objQuote) =>Text('${objQuote.text} - ${objQuote.author}')).toList(),

        children: quotes.map((objQuote) =>QuoteCard(quote: objQuote)).toList(),
      ),
    );
  }
}


