import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomButton extends StatelessWidget {
  final String label, routeName;
  final Color color;
  final Function onPressed;
  final Widget widget;
  CustomButton(
      {this.label, this.routeName, this.color, this.onPressed, this.widget});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          } else {
            Navigator.pushNamed(context, routeName);
          }
        },
        child: Container(
          width: 300,
          decoration: BoxDecoration(
              color: color != null ? color : kPrimaryPurpleColor,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(50, 50, 71, 0.06),
                    blurRadius: 4.0,
                    spreadRadius: 8.0),
                BoxShadow(
                    color: Color.fromRGBO(50, 50, 71, 0.08),
                    blurRadius: 4.0,
                    spreadRadius: 4.0),
              ]),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: label != null
                ? Text(
                    label,
                    style: TextStyle(color: Colors.white),
                  )
                : widget,
          ),
        ));
  }
}

Widget smallButton(String label) {
  return Text(label, style: kSmallButtonStyle);
}

class CustomFlatButton extends StatelessWidget {
  final String label, routeName;
  final VoidCallback onPressed;
  final Color color;

  const CustomFlatButton(
      {this.label, this.onPressed, this.routeName, this.color});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.zero,
        textColor: color,
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          } else {
            Navigator.pushNamed(context, routeName);
          }
        },
        child: Text(
          label,
          style: kSmallButtonStyle.copyWith(
              fontWeight: FontWeight.bold, color: color),
        ));
  }
}

class CustomFlatButtonV2 extends StatelessWidget {
  final String label, buttonLabel, routeName;
  final Color color;
  const CustomFlatButtonV2({
    this.label,
    this.buttonLabel,
    this.routeName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kSmallButtonStyle.copyWith(
              fontWeight: FontWeight.bold, color: kPrimaryDarkColor),
        ),
        SizedBox(
          width: 5.0,
        ),
        GestureDetector(
          child: Text(
            buttonLabel,
            style: kSmallButtonStyle.copyWith(
                fontWeight: FontWeight.bold, color: color),
          ),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
        ),
      ],
    );
  }
}
