import 'package:flutter/material.dart';
import 'package:table_data_from_api/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
    },
  ));
}

