import 'dart:async';

import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  startTimeout() {
    var duration = Duration(seconds: 3);
    Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    Navigator.pushNamed(context, '/second');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage("assets/logos/logo.png")),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "The Bookshop",
                    style: kHeading2,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              "© Copyright The Bookshop 2020 \n All rights reserved",
              style: kBody3,
            ),
          ),
        ],
      ),
    );
  }
}
