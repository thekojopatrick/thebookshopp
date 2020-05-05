import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

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

class LibraryCard extends StatelessWidget {
  final String itemName, itemImage, authorName;
  const LibraryCard({
    Key key,
    this.itemName,
    this.itemImage,
    this.authorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: 150,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
          child: Row(children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset('assets/images/$itemImage'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: Text(
                    authorName,
                    style: kBody2,
                  )),
                  Expanded(child: Text(itemName, style: kBody1)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          "Owned",
                          style: kBody1.copyWith(color: Colors.redAccent),
                        ),
                        SizedBox(width: 100),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Read",
                              style:
                                  kBody2.copyWith(color: kPrimaryPurpleColor),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ])),
    );
  }
}
