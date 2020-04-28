import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key key,
    @required this.currentPage,
    this.onTap,
  }) : super(key: key);

  final int currentPage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: kPrimaryPurpleColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        //unselectedLabelStyle: TextStyle(color:kDarkGreyColor),
        onTap: onTap,
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.book),
            title: Text("Books"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.columns),
            title: Text("Stationary"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.bookmark),
            title: Text("Library"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            title: Text("Account"),
          ),
        ]);
  }
}
