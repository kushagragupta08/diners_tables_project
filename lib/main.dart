import 'dart:convert';
import 'package:flutter/cupertino.dart' as prefix0;
import 'Featured-Items.dart';
import 'MenuPageHeader.dart';
import 'dart:async';
import 'package:flutter/material.dart';
// import 'model.dart';
import 'modelDiners.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "JsoN Serialization",
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            // IMPORT HEADER CLASS TO DRAW STACKED PART OF MENU PAGE
            Header(),
            SizedBox(
              height: 30.0,
            ),
            prefix0.Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
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
                  margin: EdgeInsets.only(
                      top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 275.0,
              child: ListTest(),
            ),
            SizedBox(
              height: 30.0,
            ),
            prefix0.Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                  child: Text(
                    "TODAY's SPECIAL",
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
                  margin: EdgeInsets.only(
                      top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 335.0,
              child: ListTest(),
            ),
          ],
        ),
      ),
    );
  }
}

/*

body:
Center(
          child: FutureBuilder(
            future: fetchListUser(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<Special> users = snapshot.data;
                return new ListView(
                  children: users
                      .map((user) => Text('User Id is:  ${user.count}'))
                      .toList(),
                );
              } else if (snapshot.hasError) {
                return Text("Exception is : $snapshot.error");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),


Future<List<Special>> fetchListUser() async {
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjAsIm5hbWUiOm51bGwsImVtYWlsIjpudWxsLCJwaG9uZU5vIjoiKzkxODM3NjAyMTEyMCIsImlhdCI6MTU1OTA2NDgwMywiZXhwIjoxNTU5MTUxMjAzfQ.2sqytmzLRiCWiw-yPDqUavypFDUqk4nePGNE8SWMfc0";

  final response = await http.get(
    Uri.encodeFull(
        "http://api.dinerstables.com/api/v1/restaurant/1/category/Todays Special"),
    headers: {
      'Authorization': 'Bearer $token',
      //'Content-Type': 'application/json',
      'Accept': 'text/json',
    },
  );
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    List users = json.decode(response.body);

    return users.map((rows) => new Special.fromJson(rows));
  } else if (response.statusCode == 401) {
    throw Exception("Unauthorization Error");
  } else {
    throw Exception(response.statusCode);
  }

}
*/
