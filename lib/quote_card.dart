import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
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
}