import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreenNotifier extends ChangeNotifier{
  int pageindex=0;

  get getpageindex => pageindex;

  set setpageindex(int selectedpageindex){
         
         pageindex=selectedpageindex;
  }

  

}