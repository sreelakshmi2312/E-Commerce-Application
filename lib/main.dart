import 'package:ecommerce/Controllers/providercontroller.dart';
import 'package:flutter/material.dart';
import 'Screens/mainscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers:[
         ChangeNotifierProvider(create: (context)=>MainScreenNotifier()),
      ],
       child:MyApp())
    );
   
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

