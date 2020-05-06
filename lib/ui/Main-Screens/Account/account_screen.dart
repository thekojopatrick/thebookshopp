import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

import 'components/menu_item.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            AccountHeader(),
            SizedBox(height: 5),
            AccountBody(),
            SizedBox(height: 50),
            AccountFooter(),
          ],
        ),
      ),
    );
  }
}

class AccountFooter extends StatelessWidget {
  const AccountFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MenuItem(
        icon: FeatherIcons.logOut,
        menuName: 'Log Out',
      ),
    );
  }
}

class AccountBody extends StatelessWidget {
  const AccountBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MenuItem(
            icon: FeatherIcons.user,
            menuName: 'Account Info',
          ),
          Divider(),
          MenuItem(
            icon: FeatherIcons.bell,
            menuName: 'Notifications',
          ),
          Divider(),
          MenuItem(
            icon: FeatherIcons.gift,
            menuName: 'Reedem Promo Code',
          ),
          Divider(),
          MenuItem(
            icon: FeatherIcons.lock,
            menuName: 'Terms of Services',
          ),
          Divider(),
          MenuItem(
            icon: FeatherIcons.info,
            menuName: 'Need Assistance ?',
          ),
        ],
      ),
    );
  }
}

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: kSecondaryPurpleColor),
      child: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/avatar5.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tiana Rosser",
                    style: kBody2.copyWith(color: Colors.white),
                  ),
                  Text(
                    "tianarosser43@gmail.com",
                    style: kBody2.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
