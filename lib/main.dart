import 'package:flutter/material.dart';
import 'Quote.dart';

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
  Widget quoteTemplate(quote){
    return
      Card(
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Padding(
        // Padding to card does not work we have to give padding to child instead
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18
              ),
            ),
            SizedBox(height: 5),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14
                  ),
                )
            ],
        ),
      ),
    );
  }

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

        children: quotes.map((objQuote) =>quoteTemplate(objQuote)).toList(),
      ),
    );
  }
}

