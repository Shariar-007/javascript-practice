
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getting_started_screen/model/slide.dart';
import 'package:getting_started_screen/widgets/slide_dots.dart';
import 'package:getting_started_screen/widgets/slide_item.dart';
import 'package:async/async.dart';


class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration( seconds: 5), (timer) {
      if(_currentPage < 2) {
        _currentPage++;
      } else{
        _currentPage = 0;
      }
      
      _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeIn,
      );
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i)
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            for(int i=0; i< slideList.length; i++)
                              if(i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                onPressed: () {  },
                child: Text('Getting Started',
                style: TextStyle(fontSize: 18)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an account', style: TextStyle(fontSize: 18),),
                      FlatButton(
                        onPressed: () {  },
                        child: Text('Login', style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ),
                ],
            ),
          ],
        ),
      )
    );
  }
}
