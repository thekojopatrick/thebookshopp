
import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide.none),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13),
            topRight: Radius.circular(13),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(50, 50, 71, 0.24),
                blurRadius: 32.0,
                spreadRadius: 18.0),
            BoxShadow(
                color: Color.fromRGBO(50, 50, 71, 0.24),
                blurRadius: 16.0,
                spreadRadius: 12.0),
          ]),
      child: child,
    );
  }}