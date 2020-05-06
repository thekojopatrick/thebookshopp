import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class MenuItem extends StatelessWidget {
  final String menuName;
  final IconData icon;
  final VoidCallback onTap;
  const MenuItem({
    Key key,
    this.menuName,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: kPrimaryPurpleColor,
          )),
      title: Text(menuName),
    );
  }
}
