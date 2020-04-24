import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class CustomButton extends StatelessWidget {
  final String label, routeName;
  final Color color;
  CustomButton({this.label, this.routeName, this.color});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: (){
           Navigator.pushNamed(context, routeName);
        },
        child: Container(
          width: 300,
          decoration: BoxDecoration(
              color: color != null ? color :kPrimaryPurpleColor,
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
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
