import 'package:flutter/material.dart';
import 'package:kas/gift.dart';
import 'package:kas/repeats/discount.dart';
import 'package:kas/repeats/navigatorBar.dart';
import 'catagories.dart';
import 'constant.dart';

class input_page extends StatefulWidget {
  const input_page({Key? key}) : super(key: key);

  @override
  _input_pageState createState() => _input_pageState();
}

class _input_pageState extends State<input_page> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //TİTLE
                  buildTitle(),
                  SizedBox(
                    height: 24,
                  ),

                  //BOX

                  buildContainer(),
                  SizedBox(
                    height: 48,
                  ),
                  // Navigator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildNavigator(
                          Metin: 'Katagoriler',
                          icon: Icons.menu,
                          widget: CatagoriesPage(),
                          context: context),
                      buildNavigator(
                          Metin: 'Hediyeler',
                          icon: Icons.card_giftcard,
                          widget: CatagoriesPage(),
                          context: context),
                      buildNavigator(
                          Metin: 'Elektronik',
                          icon: Icons.electrical_services_outlined,
                          widget: CatagoriesPage(),
                          context: context),
                      buildNavigator(
                          Metin: 'En iyiler',
                          icon: Icons.people,
                          widget: CatagoriesPage(),
                          context: context),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //Sales Title

                  Center(
                      child: Text('Satış',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A1034),
                              fontSize: 24))),
                  SizedBox(
                    height: 16,
                  ),

                  //SALES ITEMS

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                      buildSalesItems(
                          'Telefon', 'images/apple.jpg', '-%50', screenWidth),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            //BOTTOM BAR
            NavigatorBottomBar()
          ],
        ),
      ),
    );
  }
}

Widget buildTitle() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      'Home',
      style: MetinSitili,
    ),
  );
}

Widget buildContainer() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(6)),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boss Home Speaker',
              style: ContainerSitili,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'USD',
              style: DolarSitili,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Image.asset(
            'images/jbl.jpg',
          ),
        )
      ],
    ),
  );
}

Widget buildNavigator(
    {required String Metin,
    required IconData icon,
    required BuildContext context,
    required CatagoriesPage widget}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          Metin,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildSalesItems(
    String text, String imagesurl, String discount, double screenWidth) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDiscount('%50'),
        // Telephone images
        SizedBox(
          height: 22,
        ),
        Center(
          child: Image.asset(
            imagesurl,
            width: 71,
            height: 130,
          ),
        ),
        //Telephone names
        SizedBox(
          height: 22,
        ),
        Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)),
          ),
        )
      ],
    ),
  );
}
