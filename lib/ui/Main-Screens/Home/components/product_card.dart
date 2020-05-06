import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class ProductCard extends StatelessWidget {
  final String bookName, bookSeller, bookImage;
  const ProductCard({
    this.bookName,
    this.bookSeller,
    this.bookImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image(
                      image: AssetImage("assets/images/$bookImage"),
                    )),
              ),
              SizedBox(height: 2),
              Expanded(
                  child: Text(
                bookName,
                style: kBody1,
              )),
              //Expanded(child: SizedBox(height: 5)),
              Expanded(
                  child: Text(
                bookSeller,
                textAlign: TextAlign.left,
                style: kBody3.copyWith(color: kPrimaryPurpleColor),
              )),
            ]),
      ),
    );
  }
}