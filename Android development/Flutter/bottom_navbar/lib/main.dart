import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Camera')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white24,
        // iconSize: 30,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            // backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              // backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Camera'),
              // backgroundColor: Colors.cyan
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              // backgroundColor: Colors.green
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
