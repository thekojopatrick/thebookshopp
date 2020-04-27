import 'package:flutter/widgets.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomInfoField extends StatelessWidget {
  final String title, body;
  final Color color;

  const CustomInfoField({this.title, this.body, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(16, 24, 0, 0),
          child: Text(
            title,
            style: kHeading2.copyWith(
              color:color!= null ? color : kPrimaryDarkColor,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
          child: Text(
            body,
            //textAlign: TextAlign.center,
            style: kBody2.copyWith(
              color:color != null ? color: kDarkGreyColor,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
