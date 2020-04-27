import 'package:flutter/material.dart';
import 'package:the_bookshop_app/components/custom_appBar.dart';
import 'package:the_bookshop_app/components/custom_button.dart';
import 'package:the_bookshop_app/components/custom_infofield.dart';
import 'package:the_bookshop_app/components/custom_textfield.dart';

class ForgottenPassword extends StatefulWidget {
  ForgottenPassword({Key key}) : super(key: key);

  @override
  _ForgottenPasswordState createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(label: "Sign Up", routeName: "/signup"),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CustomInfoField(
                title: "Forgotten Password",
                body:
                    "Please enter email ,a link will be sent \nto your email for  your password reset.",
              ),
              SizedBox(height: 20),
              CustomTextField(
                label: "Email Address",
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "Reset Password",
                onPressed: () {
                  print("Reset Passowrd");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
