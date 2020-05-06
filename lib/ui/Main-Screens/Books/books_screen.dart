import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

import 'components/book_card.dart';

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

