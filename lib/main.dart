import 'package:flutter/material.dart';
import 'package:the_bookshop_app/routes.dart';
import 'package:the_bookshop_app/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      initialRoute: '/',
      routes: routes,
    );
  }
}
