import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Widgets/bottomnav.dart';
import 'package:ecommerce/Constants/appstyle.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('SearchScreen',
        style:appstyle(40, Colors.black, FontWeight.bold)),
      ),
        );
  }
}