import 'package:flutter/material.dart';

Widget buildHeader(BuildContext context,String metin){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 29,
      ),
      FlatButton(

        onPressed: () { Navigator.pop(context); },
        child: Icon(
          Icons.arrow_back_outlined,
          size: 27,
        ),
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        metin,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color(0xFF0A1034)),
      ),
    ],
  );
  //Back Icon


}