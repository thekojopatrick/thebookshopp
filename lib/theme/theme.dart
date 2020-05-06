import 'package:flutter/material.dart';

  //Colors for theme
//  Color(0xfffcfcff);
  final Color lightPrimary = Color(0xfffcfcff);
  final Color darkPrimary = Colors.black;
  final Color lightAccent = Colors.red;
  final Color darkAccent = Colors.red[400];
  final Color lightBG = Color(0xfffcfcff);
  final Color darkBG = Colors.black;
  final Color ratingBG = Colors.yellow[600];

  final ThemeData lightTheme = ThemeData(
    fontFamily: "SF Pro Display",
    backgroundColor: lightBG,
    //primaryColor: lightPrimary,
    //primaryColorDark: darkPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      color: lightPrimary,
      iconTheme: IconThemeData(
        color : darkPrimary
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: lightAccent,
//      ),
    ),
  );



  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: darkAccent,
//      ),
    ),
  );


  final themeData = ThemeData(
  fontFamily: "SF Pro Display",
  primarySwatch: Colors.indigo,
  primaryColor: const Color(0xFF3f51b5),
  accentColor: const Color(0xFF3f51b5),
  canvasColor: const Color(0xFFfafafa),
  scaffoldBackgroundColor: Colors.white,
);