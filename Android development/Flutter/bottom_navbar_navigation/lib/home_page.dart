

import 'package:bottom_navbar_navigation/blogs_page.dart';
import 'package:flutter/material.dart';

import 'account_page.dart';
import 'favorites_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    BlogsPage(),
    FavoritePage(),
    AccountPage()
  ];
  void _onPageChanged(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      // ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(
                'Blogs',
              style: TextStyle(
                color: selectedIndex == 0 ? Colors.blue: Colors.grey,
              ),
            ),
            icon: Icon(
                Icons.home,
                color: selectedIndex == 0 ? Colors.blue: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
                'Favorite',
              style: TextStyle(
                color: selectedIndex == 1 ? Colors.blue: Colors.grey,
              ),
            ),
            icon: Icon(
                Icons.favorite,
              color: selectedIndex == 1 ? Colors.blue: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
                'Account',
              style: TextStyle(
                color: selectedIndex == 2 ? Colors.blue: Colors.grey,
              ),
            ),
            icon: Icon(
                Icons.person,
              color: selectedIndex == 2? Colors.blue: Colors.grey,
            ),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
