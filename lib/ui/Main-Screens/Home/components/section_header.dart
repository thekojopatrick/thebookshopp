import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback onTap;
  const SectionHeader({
     this.sectionTitle, this.onTap,
  }); 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(sectionTitle, style: kBody1),
        FlatButton(
          onPressed: onTap,
          child: Text(
            "View All",
            style: kBody1,
          ),
        ),
      ],
    );
  }
}