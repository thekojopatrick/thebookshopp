import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:the_bookshop_app/components/custom_bottom_nav.dart';

import 'Account/account_screen.dart';
import 'Books/books_screen.dart';
import 'Home/home_screen.dart';
import 'Library/library_screen.dart';
import 'Stationary/stationary_screen.dart';

class AppScreen extends StatefulWidget {
  AppScreen({Key key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int selectedPage = 0;

  static const List<Widget> _pages = <Widget>[
    Text(
      ' The Bookshop',
    ),
    Text(
      'Books',
    ),
    Text(
      'Stationary',
    ),
    Text(
      'Library',
    ),
    Text(
      'Account',
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: _pages.elementAt(selectedPage),
        actions: <Widget>[
          Icon(FeatherIcons.search),
          SizedBox(width: 7),
          Icon(FeatherIcons.shoppingBag),
          SizedBox(width: 16),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentPage: selectedPage,
        onTap: onItemTapped,
      ),
      drawer: Drawer(),
      body: changePage(selectedPage),
    );
  }

  changePage(int index) {
   
      switch (index) {
        case 0:
          return HomeScreen();

          break;
        case 1:
          return BookScreen();
          break;
        case 2:
          return StationaryScreen();
          break;
        case 3:
          return LibraryScreen();
          break;
        case 4:
          return AccountScreen();
          break;
        default:
      }

  }
}
