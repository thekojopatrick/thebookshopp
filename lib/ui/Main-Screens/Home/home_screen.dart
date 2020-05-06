import 'package:flutter/material.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

import 'components/banner_card.dart';
import 'components/product_card.dart';
import 'components/section_header.dart';
import 'components/sellers.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        BannerCard(),
        TopSellersSection(),
        NewItemSection(),
        PopularItemSection(),
      ],
    ));
  }
}



class TopSellersSection extends StatelessWidget {
  const TopSellersSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16,5,0,5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           SectionHeader(
            sectionTitle: 'Sellers',
            onTap: () {},
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SellersProfileCard(
                    sellerName: "Kwame",
                    img: 'avatar1',
                  ),
                  SellersProfileCard(sellerName: "Kingdom", img: 'avatar2'),
                  SellersProfileCard(
                    sellerName: "EP",
                    img: 'avatar3',
                  ),
                  SellersProfileCard(
                    sellerName: "Methodist",
                    img: 'avatar4',
                  ),
                  SellersProfileCard(
                    sellerName: "Ama",
                    img: 'avatar5',
                  ),
                  SellersProfileCard(
                    sellerName: "Kojo Books",
                    img: 'avatar2',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewItemSection extends StatelessWidget {
  const NewItemSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16,5,0,5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionHeader(
            sectionTitle: 'New Read',
            onTap: () {},
          ),
          Expanded(
              child: SizedBox(
                  height: 150,
                  //width: 100,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ProductCard(
                          bookImage: 'BookCover2.jpg',
                          bookName: 'Simon Bright',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'Book-1.png',
                          bookName: 'Lily Allen',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'BookCover.png',
                          bookName: 'Where the cra',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'Book.png',
                          bookName: 'Simon Bright',
                          bookSeller: 'Kingdom Boooks',
                        ),
                      ])))
        ],
      ),
    );
  }
}



class PopularItemSection extends StatelessWidget {
  const PopularItemSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16,5,0,5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionHeader(
            sectionTitle: 'Popular Read',
            onTap: () {},
          ),
          Expanded(
              child: SizedBox(
                  height: 150,
                  //width: 100,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ProductCard(
                          bookImage: 'Book.png',
                          bookName: 'Simon Bright',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'BookCover2.jpg',
                          bookName: 'Simon Bright',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'Book-1.png',
                          bookName: 'Lily Allen',
                          bookSeller: 'Kingdom Boooks',
                        ),
                        ProductCard(
                          bookImage: 'BookCover.png',
                          bookName: 'Where the cra',
                          bookSeller: 'Kingdom Boooks',
                        ),
                      ])))
        ],
      ),
    );
  }
}



