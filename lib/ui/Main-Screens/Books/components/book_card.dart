import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class BookCard extends StatelessWidget {
  final String bookName, bookImage, bookPrice, bookAuthor;
  const BookCard({
    Key key,
    this.bookName,
    this.bookImage,
    this.bookPrice,
    this.bookAuthor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  // decoration:
                  //  BoxDecoration(color: Colors.grey.shade200),
                  child: Image(
                    image: AssetImage('assets/images/$bookImage'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                bookName,
                style: kBody1,
              ),
              SizedBox(height: 5),
              Text(bookAuthor,
                  style: kBody3.copyWith(
                    color: kPrimaryPurpleColor,
                  )),
              SizedBox(height: 5),
              Text(
                '\$$bookPrice',
                style: kBody1,
              ),
            ]),
      ),
    );
  }
}
