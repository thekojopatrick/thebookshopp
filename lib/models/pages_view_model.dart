import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class PagesViewModel {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "Search For Book",
      body:
          "Instead of having to buy an entire share, invest any amount you want.",
      image: _buildImage('slider-image1'),
      decoration: pageDecoration,
    ),
    PageViewModel(
      title: "Get Book Delivered",
      body:
          "Instead of having to buy an entire share, invest any amount you want.",
      image: _buildImage('slider-image2'),
      decoration: pageDecoration,
    ),
    PageViewModel(
      title: "Enjoy Your Book",
      body:
          "Instead of having to buy an entire share, invest any amount you want.",
      image: _buildImage('slider-images3'),
      decoration: pageDecoration,
      footer: CustomButton(
        label: "Getting Started",
        routeName: "/intro",
      ),
    ),
  ];
}

void onIntroEnd(context) {
  Navigator.pushNamed(context, '/intro');
}

Widget _buildImage(String assetName) {
  return Align(
    child: Image.asset(
      'assets/images/$assetName.png',
      width: 300.0,
    ),
    alignment: Alignment.bottomCenter,
  );
}
