import 'package:flutter/widgets.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomInfoField extends StatelessWidget {
  final String title, body;

  const CustomInfoField({this.title, this.body});

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
            style: kHeading1,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
          child: Text(
            body,
            style: kBody2.copyWith(
              color: kDarkGreyColor,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
