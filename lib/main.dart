import 'package:flutter/material.dart';
import 'package:kas/constant.dart';
import 'package:kas/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Uygulama Denemesi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: input_page(),
    );
  }
}

