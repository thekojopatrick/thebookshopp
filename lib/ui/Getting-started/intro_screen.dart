import 'package:flutter/material.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class GettingStarted extends StatefulWidget {
  GettingStarted({Key key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background-image.png"),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(
                child: Text(
                  'Getting Started',
                  style: kHeading5.copyWith(color: Colors.white),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'Create an Account',
                    style: kHeading3.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                    child: Text(
                  'Signing up or login to see \n our top picks for you.',
                  style: kHeading5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                )),
              ],
            ),
            Column(
              children: <Widget>[
                CustomButton(label: 'Create Account'),
                SizedBox(
                  height: 15.0,
                ),
                CustomButton(
                  label: 'Login',
                  color: kSecondaryPurpleColor,
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
