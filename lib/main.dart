import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';
//List

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Awesome Quotes', 'isaac Ayo'),
    Quote('Awesome Quotes', 'isaac Ayo'),
    Quote('Awesome Quotes', 'isaac Ayo'),
    Quote('Awesome Quotes', 'isaac Ayo'),
    Quote('Awesome Quotes', 'isaac Ayo'),
    Quote('Awesome Quotes', 'isaac Ayo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: quotes.map((quote) {
            return QuoteCard(quote: quote);
          }).toList(),
        ),
      ),
    );
  }
}
