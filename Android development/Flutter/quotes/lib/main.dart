import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   'Be yourself; everyone else is already taken',
  //   'I have noting to declare except my genius',
  //   'The truth is rarely pure and never simple'
  // ];

  List<Quote> quotes = [
    Quote(text: 'Osca Wilde0', author: 'Be yourself, everyone else is already taken'),
    Quote(text: 'Osca Wilde0', author: 'I have noting to declare except my genius'),
    Quote(text: 'Osca Wilde0', author: 'The truth is rarely pure and never simple')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600]
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
            ),
          )
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // for list of strings
        // children: quotes.map((quote){
        //   return Text(quote);
        // }).toList(),
        // for list of object
        children: quotes.map((quote){
          // return Text('${quote.text} - ${quote.author}');
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}

