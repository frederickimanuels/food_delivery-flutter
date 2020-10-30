import 'package:flutter/material.dart';
import 'package:food_delivery/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'Cabin',
      ),
      home: LandingScreen(),
    );
  }
}
