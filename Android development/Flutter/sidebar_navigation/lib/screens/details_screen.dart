
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  static const routeName = '/details-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Detail Page',
              style: TextStyle(fontSize: 22,),
            ),
            FloatingActionButton(
              // child: Text('Go Back'),
              child: Icon(Icons.arrow_back_ios),
              onPressed: () {
                // Navigator.pop(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
