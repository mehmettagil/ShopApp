import 'package:flutter/material.dart';
 buildDiscount(String discount){
   return Container(
     padding: EdgeInsets.all(4),

     height: 22,

     decoration: BoxDecoration(
         color: Colors.lightBlueAccent,
         borderRadius: BorderRadius.circular(2)),
     child: Text(
       discount,
       style: TextStyle(
         fontSize: 12,
         color: Colors.blue,
       ),
     ),

     // padding: EdgeInsets.only(left: 50),
   );
 }