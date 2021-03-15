import 'package:flutter/material.dart';
// import 'package:products/screens/HomePage.dart';
import 'package:products/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cars Catalogue', theme: ThemeData.dark(), home: HomePage());
  }
}
