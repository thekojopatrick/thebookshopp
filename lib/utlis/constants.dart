import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';

const kPrimaryDarkColor = Color(0xff151522);
const kPrimaryPurpleColor = Color(0xff6979F8);
const kSecondaryPurpleColor = Color(0xff3443BF);
const kDarkGreyColor = Color(0xff999999);
const kSecondaryBlueColor = Color(0xff4EAEFF);

const kHeading1 = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.w700,
  color: kPrimaryDarkColor,
  fontStyle: FontStyle.normal,
);

const kHeading2 = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w700,
  color: kPrimaryDarkColor,
  fontStyle: FontStyle.normal,
);

const kHeading3 = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w700,
);

const kHeading4 = TextStyle(
  fontSize: 22.0,
);

const kHeading5 = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w700,
);

const kBody1 = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w700,
);

const kBody2 = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  color: kPrimaryDarkColor,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.5,
);

const kBody3 = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: kPrimaryDarkColor,
  fontStyle: FontStyle.normal,
);

const kSmallButtonStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  color: kPrimaryPurpleColor,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.5,
);

const bodyStyle = TextStyle(fontSize: 19.0);
const pageDecoration = const PageDecoration(
  titleTextStyle: kHeading1,
  bodyTextStyle: kBody2,
  descriptionPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
  pageColor: Color(0xffffff),
  imagePadding: EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
);
