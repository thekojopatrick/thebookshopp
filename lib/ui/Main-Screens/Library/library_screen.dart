import 'package:flutter/material.dart';
import 'components/library_card.dart';

class LibraryScreen extends StatefulWidget {
  LibraryScreen({Key key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        LibraryCard(
          itemImage: 'BookCover2.jpg',
          authorName: 'Kingdom Books',
          itemName: 'Give and Take',
        ),
           LibraryCard(
          itemImage: 'BookCover.png',
          authorName: 'Kingdom Books',
          itemName: 'My Thoughts Exactly',
        ),
           LibraryCard(
          itemImage: 'Book.png',
          authorName: 'Kingdom Books',
          itemName: 'Where The Crawdads Sing',
        ),
      ],
    );
  }
}

