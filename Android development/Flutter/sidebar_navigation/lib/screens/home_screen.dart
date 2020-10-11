import 'package:flutter/material.dart';

import 'details_screen.dart';
import 'main_drawer.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer:  MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'We are in the Home Page now.',
            style: TextStyle(fontSize: 22,),
            ),
            RaisedButton(
              child: Text('Go to details'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                // MaterialPageRoute(
                //   builder: (context) => DetailScreen()
                // );
                Navigator.of(context).pushNamed(DetailScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
