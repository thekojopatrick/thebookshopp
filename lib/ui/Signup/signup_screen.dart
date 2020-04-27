import 'package:flutter/material.dart';
import 'package:the_bookshop_app/components/custom_appBar.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/components/custom_infofield.dart';
import 'package:the_bookshop_app/components/custom_textfield.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(label: "Login"),
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              CustomInfoField(
                title: "Create an account",
                body: "Signing up or login to see \n our top picks for you.",
              ),
              CustomTextField(label: "Your Name"),
              CustomTextField(label: "Email Address"),
              CustomTextField(label: "Password"),
              SizedBox(height: 20),
              CustomButton(
                label: "Sign Up",
                routeName: "/home",
              ),
              SizedBox(height: 14),
              CustomFlatButtonV2(
                label: 'Forgotten Password ?',
                buttonLabel: 'Reset',
                routeName: '/forgotten_password',
              ),
              SizedBox(height: 50),
              CustomButton(
                widget:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image(
                    image: AssetImage(
                      'assets/icons/google_icon.png',
                    ),
                    width: 25.0,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Sign Up with Google',
                    style: kBody1,
                  )
                ]),
                color: Colors.white,
                routeName: "/home",
              ),
              SizedBox(height: 20),
              CustomFlatButtonV2(
                label: 'Already a User?',
                buttonLabel: 'Login',
                routeName: '/login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
