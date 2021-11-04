import 'package:flutter/material.dart';
import 'package:kas/catagory.dart';
import 'package:kas/repeats/header.dart';
import 'package:kas/repeats/navigatorBar.dart';
import '';

class CatagoriesPage extends StatelessWidget {
  const CatagoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(context,'Catagories'),
                  //Title

                  SizedBox(
                    height: 18,

                  ),

                    Expanded(
                      child: ListView(
                        children: [
                          buildBoxList('All',context),
                          buildBoxList('Compoturs',context),
                          buildBoxList('Accessories',context),
                          buildBoxList('Smartphones',context),
                          buildBoxList('Smart object',context),
                          buildBoxList('Speakers',context),
                          buildBoxList('Speakers',context),
                          buildBoxList('Speakers',context),
                          buildBoxList('Speakers',context),


                        ],
                      ),
                    ),
                  NavigatorBottomBar()


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget buildBoxList(String metin,context){
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CatagoryPage(metin);
      }));
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 16),

      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4))
          ]),
      child: Text(
        metin,
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0A1034)),
      ),
    ),
  );

}
