import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class BookScreen extends StatefulWidget {
  BookScreen({Key key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: true,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: <Widget>[
              BookCard(
                bookName: "My Thoughts Exactly",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'BookCover.png',
              ),
              BookCard(
                bookName: "Next Level Basic",
                bookAuthor: 'Simons Bright ',
                bookPrice: '10',
                bookImage: 'Book-1.png',
              ),
              BookCard(
                bookName: "Where the crowdad",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'Book.png',
              ),
              BookCard(
                bookName: "Give and Take",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'BookCover2.jpg',
              ),
              BookCard(
                bookName: "My Thoughts Exactly",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'BookCover.png',
              ),
              BookCard(
                bookName: "Next Level Basic",
                bookAuthor: 'Simons Bright ',
                bookPrice: '10',
                bookImage: 'Book-1.png',
              ),
              BookCard(
                bookName: "Where the crowdad",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'Book.png',
              ),
              BookCard(
                bookName: "Give and Take",
                bookAuthor: 'Lily Allen',
                bookPrice: '20',
                bookImage: 'BookCover2.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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
