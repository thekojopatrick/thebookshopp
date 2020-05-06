import 'package:flutter/material.dart';
import 'package:the_bookshop_app/components/custom_bannerCard.dart';
import 'package:the_bookshop_app/utlis/constants.dart';

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









class PopularItemSection extends StatelessWidget {
  const PopularItemSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Popular Read", style: kBody1),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: kBody1,
                ),
              ),
            ],
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
class NewItemSection extends StatelessWidget {
  const NewItemSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("New This Week", style: kBody1),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: kBody1,
                ),
              ),
            ],
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

class TopSellersSection extends StatelessWidget {
  const TopSellersSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Top Sellers", style: kBody1),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: kBody1,
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SellersProfileCard(sellerName: "Kwame" ,img: 'avatar1',),
                  SellersProfileCard(sellerName: "Kingdom",img:'avatar2'),
                  SellersProfileCard(sellerName: "EP" ,img: 'avatar3',),
                  SellersProfileCard(sellerName: "Methodist",img: 'avatar4',),
                  SellersProfileCard(sellerName: "Ama",img: 'avatar5',),
                  SellersProfileCard(sellerName: "Kojo Books",img: 'avatar2',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SellersProfileCard extends StatelessWidget {
  const SellersProfileCard({this.sellerName, this.img});

  final String sellerName, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/$img.png"),
          ),
          SizedBox(height: 5),
          Expanded(child: Text(sellerName, style: kBody2)),
        ],
      ),
    );
  }
}
