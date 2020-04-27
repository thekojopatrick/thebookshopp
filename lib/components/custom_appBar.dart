import 'package:flutter/material.dart';
import 'custom_button.dart';

AppBar customAppBar({@required String label,routeName}) {
  
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: <Widget>[
          CustomFlatButton(
            label: label,
            routeName: routeName,
          ),
        ]);
  }
