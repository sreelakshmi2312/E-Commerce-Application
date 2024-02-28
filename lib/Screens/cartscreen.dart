import 'package:flutter/material.dart';
import 'package:ecommerce/Constants/appstyle.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('cart Screen',
        style:appstyle(40, Colors.black, FontWeight.bold)),
      ),
        );
  }
}