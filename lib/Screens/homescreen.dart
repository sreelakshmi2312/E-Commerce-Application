import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Widgets/bottomnav.dart';
import 'package:ecommerce/Constants/appstyle.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('HomeScreen',
        style:appstyle(40, Colors.black, FontWeight.bold)),
      ),
    );

  } 
}