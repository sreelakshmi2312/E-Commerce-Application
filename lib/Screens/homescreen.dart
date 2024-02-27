import 'package:flutter/material.dart';
import 'package:ecommerce/Widgets/bottomnav.dart';
import 'package:ecommerce/Constants/appstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cart.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child:Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Fresh',
                    style: appstyle(24, Colors.white, FontWeight.bold),
                  ),
                  Text(
                    'Veggies',
                    style: appstyle(24, Colors.white, FontWeight.bold),
                  ),
                ],
              ),
            ),
            ),
            ],
        ),
      ),
    );
  }
}