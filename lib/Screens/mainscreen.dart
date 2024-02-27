import 'package:ecommerce/Screens/cartscreen.dart';
import 'package:ecommerce/Screens/homescreen.dart';
import 'package:ecommerce/Screens/personscreen.dart';
import 'package:ecommerce/Screens/searchscreen.dart';
import 'package:ecommerce/constants/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Widgets/bottomnav.dart';
import 'package:ecommerce/Controllers/providercontroller.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatelessWidget {
  List<Widget> pagelist=[
    HomeScreen(),
    searchScreen(),
    HomeScreen(),
    cartScreen(),
    personScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainscreennotifier , child){
      return Scaffold(
        body:pagelist[mainscreennotifier.pageindex],
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
                  bottomnav(iconitem: mainscreennotifier.pageindex==0?Icons.home:Icons.home_outlined, ontap:(){mainscreennotifier.setpageindex=0;},),
                  bottomnav(iconitem: mainscreennotifier.pageindex==1?Icons.search_rounded:Icons.search_outlined, ontap:(){mainscreennotifier.setpageindex=1;},),
                  bottomnav(iconitem: mainscreennotifier.pageindex==2?Icons.add_box:Icons.add_box_outlined, ontap:(){mainscreennotifier.setpageindex=2;},),
                  bottomnav(iconitem: mainscreennotifier.pageindex==3?Icons.shopping_bag_rounded:Icons.shopping_bag_outlined, ontap:(){mainscreennotifier.setpageindex=3;},),
                  bottomnav(iconitem: mainscreennotifier.pageindex==4?Icons.person:Icons.person_outline, ontap:(){mainscreennotifier.setpageindex=4;},),
                    ],
                  ),
            ),
          ),
            
          ),
          );
      }
          );
  }
}

