import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  const CustomTextField({this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
          child: Text(
            label,
            style: kBody1,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 15, 16, 0),
          child: TextFormField(
            decoration: InputDecoration(
                //labelText: "Email Address",
                border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
