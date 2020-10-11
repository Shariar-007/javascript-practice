import 'package:flutter/material.dart';
import 'package:getting_started_screen/GettingStartedScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: GettingStartedScreen(),
  ));
}


