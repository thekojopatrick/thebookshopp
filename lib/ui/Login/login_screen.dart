import 'package:flutter/material.dart';
import 'package:the_bookshop_app/components/custom_appBar.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/components/custom_infofield.dart';
import 'package:the_bookshop_app/components/custom_textfield.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        label: "Sign Up",
        routeName: "/enter_number",
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            CustomInfoField(
              title: "Welcome Back",
              body: "Signing up or login to see \n our top picks for you.",
            ),
            CustomTextField(label: "Email Address"),
            CustomTextField(label: "Password"),
            SizedBox(height: 20),
            CustomButton(
              label: "Login",
              routeName: "/homepage",
            ),
            SizedBox(height: 20),
            Center(
                child: CustomFlatButton(
              label: "Forgotten Password",
              routeName: '/forgotten_password',
            ))
          ],
        ),
      ),
    );
  }
}
