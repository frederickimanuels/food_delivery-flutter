import 'package:flutter/material.dart';
import 'package:food_delivery/main_screen.dart';

var heading1TextStyle =
    TextStyle(fontFamily: 'Cabin', fontSize: 20.0, fontWeight: FontWeight.bold);
var heading2TextStyle =
    TextStyle(fontFamily: 'Cabin', fontSize: 16.0, fontWeight: FontWeight.bold);
var heading3TextStyle =
    TextStyle(fontFamily: 'Cabin', fontSize: 14.0, fontWeight: FontWeight.w200);

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  String username = "Guest";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Welcome to',
                      style: heading2TextStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Food Delivery App',
                      style: heading1TextStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Please input your name',
                      style: heading3TextStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (String value) {
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Color(0xffF4B33C),
                      child: Text('Proceed'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainScreen(
                            username: username,
                          );
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
