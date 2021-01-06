import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/screen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(color: kSecondColor),
          body2: TextStyle(color: kSecondColor),
        )
      ),
      home: HomeScreen(),
    );
  }
}
