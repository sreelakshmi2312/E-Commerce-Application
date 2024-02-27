import 'package:ecommerce/constants/appstyle.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('HomeScreen',
        style:appstyle(40, Colors.black, FontWeight.bold)),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(padding: EdgeInsets.all(8),
        child:Container(
          padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color:Colors.black,
            borderRadius: BorderRadius.circular(8)),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottomnav(iconitem: Icons.home, ontap:(){},),
                bottomnav(iconitem: Icons.home, ontap:(){},),
                bottomnav(iconitem: Icons.home, ontap:(){},),
                bottomnav(iconitem: Icons.home, ontap:(){},),
                bottomnav(iconitem: Icons.home, ontap:(){},),
                  ],
                ),
          ),
          
          
        )
        ),
        );
  }
}

class bottomnav extends StatelessWidget {
  final Function? ontap;
  final IconData? iconitem;

  bottomnav({required this.ontap,required this.iconitem});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: IconButton(icon:Icon(iconitem,color: Colors.white,),
      onPressed: ()=>ontap),
      );
}
}