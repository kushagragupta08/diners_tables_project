import 'package:flutter/material.dart';
import 'MenuPageHeader.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MenuPage();
  }
}

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      body: ListView(
        children: <Widget>[
          // IMPORT HEADER CLASS TO DRAW STACKED PART OF MENU PAGE
          Header(),
          SizedBox(
            height: 50.0,
          ),

          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "FEATURED ITEMS",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(
              width: 165.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "View All",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}
