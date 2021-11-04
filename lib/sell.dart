import 'package:flutter/material.dart';
import 'package:kas/constant.dart';
import 'package:kas/repeats/discount.dart';
import 'package:kas/repeats/header.dart';
import 'package:kas/repeats/navigatorBar.dart';

class SellPage extends StatefulWidget {
  String ProductTitle;

  SellPage(this.ProductTitle,);


  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              buildHeader(context, widget.ProductTitle),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    buildDiscount('New'),
                    SizedBox(
                      height: 25,
                    ),
                    Center(child: Image.asset('images/monstersell.jpg')),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Monster',
                        style: MetinSitili,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildColorOption(Colors.black),
                        buildColorOption(Colors.purple),
                        buildColorOption(Colors.red),
                        buildColorOption(Colors.yellowAccent  )

                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
          NavigatorBottomBar()
        ],
      )),
    );
  }
}
Widget buildColorOption(Color renk){
  return Container(

    decoration: BoxDecoration(
        shape: BoxShape.circle, color: renk),
    width: 23,
    height: 23,
    margin: EdgeInsets.only(right: 15.0),
  );
}
