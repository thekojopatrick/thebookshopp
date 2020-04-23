import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Onboarding Screen",
            style: kHeading1,
          ),
        ),
      ),
    );
  }
}
