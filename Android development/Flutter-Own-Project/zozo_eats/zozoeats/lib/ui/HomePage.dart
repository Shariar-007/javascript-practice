import 'package:flutter/material.dart';
import 'package:zozoeats/ui/NavButton.dart';
import 'package:zozoeats/widgets/responsive_handler.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZozoEats', style: TextStyle(color: Colors.black),),
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      drawer: ResponsiveWidget.isSmallScreen(context)?
      Drawer(child: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          NavButton(text: 'Products', onPressed: () {}, color: Colors.white),
          NavButton(text: 'Shops', onPressed: () {}, color: Colors.white),
          NavButton(text: 'Brands', onPressed: () {}, color: Colors.white),
          NavButton(text: 'Attributes', onPressed: () {}, color: Colors.white),
          NavButton(text: 'Campaigns', onPressed: () {}, color: Colors.white),
          NavButton(text: 'Global Configs', onPressed: () {}, color: Colors.white)
        ],
      )
      ):null,
      body: SingleChildScrollView(

      ),
    );
  }
}
