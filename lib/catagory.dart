import 'package:flutter/material.dart';
import 'package:kas/repeats/header.dart';
import 'package:kas/repeats/navigatorBar.dart';
import 'package:kas/sell.dart';

class CatagoryPage extends StatelessWidget {
  String CatagoryTitle;
  CatagoryPage(this.CatagoryTitle);
  List<Map> products = [
    {
      'title': 'Monster Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Lenovo Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Asus Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Macbook Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Acer Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Huawei Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
    {
      'title': 'Excalibur Laptop',
      'images': 'images/monster.jpg',
      'price': '14000'
    },
{
'title': 'Casper Laptop',
'images': 'images/monster.jpg',
'price': '14000'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHeader(context, 'Laptop'),
                SizedBox(
                  height: 30,
                ),

                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: products.map((Map product){
                      return buildCatagory(product['title'],product['images'],product['price'],context);

                    }).toList(),

                  ),
                )
              ],
            ),
          ),
          NavigatorBottomBar()
        ],
      )),
    );
  }
}

Widget buildCatagory(String title, String imagesUrl, String price,context,) {
  return FlatButton(

    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SellPage(title);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 26,
                offset: Offset(0, 16)),
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Image.asset(imagesUrl),
          SizedBox(
            height: 42,
          ),
          Text(title),
          Text(price)
        ],
      ),
    ),
  );
}
