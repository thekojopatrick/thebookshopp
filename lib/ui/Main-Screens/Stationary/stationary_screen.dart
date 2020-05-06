import 'package:flutter/material.dart';
import 'components/bookshop_card.dart';

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

