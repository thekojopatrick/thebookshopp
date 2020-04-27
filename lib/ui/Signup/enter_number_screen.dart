import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_container.dart';
import '../../components/custom_infofield.dart';
import '../../components/custom_textfield.dart';

class EnterNumber extends StatefulWidget {
  EnterNumber({Key key}) : super(key: key);

  @override
  _EnterNumberState createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            bottom: false,
            child: Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/background-image2.png"),
                        fit: BoxFit.cover)),
                child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                        //SizedBox(height: 20),
                      Center(
                        child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                CustomInfoField(
                                    title: "Create An Account",
                                    color: Colors.white,
                                    body:
                                        "       Signing up or login to see \n         our top picks for you.")
                              ]),
                        ),
                      ),
                      SizedBox(height: 200),
                      CustomContainer(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          child: Column(children: <Widget>[
                            CustomInfoField(
                              title: "Enter your phone number",
                              body:
                                  "            Signing up or login to see \n              our top picks for you.",
                            ),
                            SizedBox(height: 20),
                            CustomTextField(
                              label: "Mobile Phone",
                            ),
                            SizedBox(height: 20),
                            CustomButton(
                              label: "Continue",
                              routeName: '/signup',
                              //onPressed: () {},
                            ),
                            SizedBox(height: 20),
                            CustomFlatButtonV2(
                              label: 'Already a User?',
                              buttonLabel: 'Login',
                              routeName: '/login',
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ]))));
  }
}


