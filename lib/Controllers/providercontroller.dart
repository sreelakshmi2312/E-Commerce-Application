import 'package:flutter/material.dart';


class MainScreenNotifier extends ChangeNotifier{
  int pageindex=0;

  get getpageindex => pageindex;

  set setpageindex(int selectedpageindex){
         
         pageindex=selectedpageindex;
         notifyListeners();
  }

  

}