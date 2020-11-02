import 'package:flutter/material.dart';
import 'package:zozoeats/ui/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zozo Eats',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          fontFamily: "GoogleSansRegular"
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes:{
        '/': (_) => HomePage(),
        // HomePage.routeName: (_) => HomePage(0),
        // FormPage.routeName: (_) => FormPage(),
        // SettingsScreen.routeName: (_) => SettingsScreen(),
      },
    );
  }
}


