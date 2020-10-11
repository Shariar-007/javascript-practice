import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:startup_namer/random_words.dart';

void main() {
  runApp(MaterialApp(
    home: RandomWords(),
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
  ));
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//         actions: [
//           IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: Center(
//         child: RandomWords()
//       ),
//     );
//   }
// }


