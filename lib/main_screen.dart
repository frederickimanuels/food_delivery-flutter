import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String username;

  MainScreen({Key key, @required this.username});

  @override
  _MainScreenState createState() => _MainScreenState(username);
}

class _MainScreenState extends State<MainScreen> {
  String username;
  _MainScreenState(this.username);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Food',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Delivery',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF4B33C),
        tooltip: 'Increment',
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
