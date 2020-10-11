import 'package:flutter/material.dart';
import 'package:login_app/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
    },
  ));
}

