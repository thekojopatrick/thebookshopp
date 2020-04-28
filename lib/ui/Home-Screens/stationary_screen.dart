import 'package:flutter/material.dart';

class StationaryScreen extends StatefulWidget {
  StationaryScreen({Key key}) : super(key: key);

  @override
  _StationaryScreenState createState() => _StationaryScreenState();
}

class _StationaryScreenState extends State<StationaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
         child: Center(child:Text("Stationary")),
      ),
    );
  }
}