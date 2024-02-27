import 'package:flutter/material.dart';
import 'Screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: MainScreen(),
    );
  }
}

