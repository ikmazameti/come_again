import 'package:flutter/material.dart';

import 'quote.dart';
//List

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

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

  Card quoteTemplate(quote) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ));
  }

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
            return quoteTemplate(quote);
          }).toList(),
        ),
      ),
    );
  }
}
