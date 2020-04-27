import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/models/pages_view_model.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final PagesViewModel viewPages = PagesViewModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: viewPages.listPagesViewModel,
      showSkipButton: true,
      showNextButton: true,
      next: smallButton("Next"),
      skip: smallButton("Skip") ,
      done: smallButton(""),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      onDone: () {},
    ));
  }
}


