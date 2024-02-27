import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Widgets/bottomnav.dart';
import 'package:ecommerce/Constants/appstyle.dart';

class personScreen extends StatefulWidget {
  const personScreen({super.key});

  @override
  State<personScreen> createState() => _personScreenState();
}

class _personScreenState extends State<personScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('PersonScreen',
        style:appstyle(40, Colors.black, FontWeight.bold)),
      ),
        );
  }
}