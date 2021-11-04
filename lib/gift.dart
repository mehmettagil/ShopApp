import 'package:flutter/material.dart';
import 'package:kas/repeats/header.dart';

class giftPage extends StatelessWidget {
  const giftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Stack(
        children: [
          Column(
            children: [
              buildHeader(context, 'Gifts')
            ],
          )
        ],
      )),
    );
  }
}
