import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: kPrimaryLightRedColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Text("New Arrivals",
            style: kBody3.copyWith(
                fontWeight: FontWeight.w500, color: Colors.white)),
        Text(
          "New Collections",
          style: kHeading1.copyWith(color: Colors.white),
        ),
        Text("20 New Books",
            style: kBody3.copyWith(
                fontWeight: FontWeight.w500, color: Colors.white)),
      ]),
    );
  }
}
