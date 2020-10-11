import 'package:flutter/material.dart';
import 'package:sidebar_navigation/screens/details_screen.dart';
import 'package:sidebar_navigation/screens/home_screen.dart';
import 'package:sidebar_navigation/screens/settings_screen.dart';

void main() {
  runApp(MaterialApp(
    // home: HomeScreen(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: '/',
    routes:{
      '/': (_) => HomeScreen(),
      DetailScreen.routeName: (_) => DetailScreen(),
      SettingsScreen.routeName: (_) => SettingsScreen(),
    },
  ));
}


