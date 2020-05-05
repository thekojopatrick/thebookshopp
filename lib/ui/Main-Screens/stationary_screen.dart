import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

class StationaryScreen extends StatefulWidget {
  StationaryScreen({Key key}) : super(key: key);

  @override
  _StationaryScreenState createState() => _StationaryScreenState();
}

class _StationaryScreenState extends State<StationaryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        BookshopCard(
          itemImage: 'stat.jpg',
          storeName: 'Kingdom Books',
          itemName: 'Paper Troll striped card & Pencils',
          itemPrice: '20',
        ),
        BookshopCard(
          itemImage: 'stat3.jpg',
          storeName: 'Kingdom Books',
          itemName: 'Paper Troll striped card & Pencils',
          itemPrice: '20',
        ),
        BookshopCard(
          itemImage: 'stat4.jpg',
          storeName: 'EP Books',
          itemName: 'Sketch Book',
          itemPrice: '20',
        ),
        BookshopCard(
          itemImage: 'stat6.jpg',
          storeName: 'Kingdom Books',
          itemName: 'Sketch Book',
          itemPrice: '20',
        ),
      ],
    );
  }
}

class BookshopCard extends StatelessWidget {
  final String itemName, storeName, itemImage, itemPrice;
  const BookshopCard({
    Key key,
    this.itemName,
    this.storeName,
    this.itemImage,
    this.itemPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: 150,
          padding:  EdgeInsets.all(8),
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
                    storeName,
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
                          "\$$itemPrice",
                          style: kBody1,
                        ),
                        SizedBox(width: 100),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Add to Cart",
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
