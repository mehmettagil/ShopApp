import 'package:flutter/material.dart';
 Widget NavigatorBottomBar(){
   return Align(
     alignment: Alignment.bottomCenter,
     child: Container(
       padding: EdgeInsets.symmetric(vertical: 20),
       width: double.infinity,
       color: Color(0xFFEFF5FB),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Icon(Icons.home),
           Icon(Icons.search),
           Icon(Icons.shopping_basket),
           Icon(Icons.person),
         ],
       ),
     ),
   );
 }