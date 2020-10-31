import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {
  final String username;
  FinishScreen({@required this.username});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 5,
                        height: 40,
                        child: RaisedButton(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: IconTheme(
                            data: IconThemeData(color: Color(0xffF4B33C)),
                            child: Icon(
                              Icons.chevron_left,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Hello $username',
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Thank You!',
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your Order is Being Processed',
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
