import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class SellersProfileCard extends StatelessWidget {
  const SellersProfileCard({this.sellerName, this.img});

  final String sellerName, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/$img.png"),
          ),
          SizedBox(height: 5),
          Expanded(child: Text(sellerName, style: kBody2)),
        ],
      ),
    );
  }
}