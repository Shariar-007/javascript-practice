
import 'package:flutter/material.dart';
import 'package:sidebar_navigation/screens/settings_screen.dart';

import 'details_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                      top: 20,
                    bottom: 10
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/1280x1280/products/7741/70730/Sale-Brand-Mens-Suit-Jacket-Formal-Business-Blazer-Men-Groom-Three-Pieces-Slim-Fit-Party-Clothing__94859.1527764049.jpg?c=2?imbypass=on'
                        )
                    ),
                  ),
                ),
                Text(
                    'Shariar Shohag',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'shariar@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
                'Profile',
                 style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(DetailScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(SettingsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
