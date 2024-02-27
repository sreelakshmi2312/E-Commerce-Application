import 'package:flutter/material.dart';

class bottomnav extends StatelessWidget {
  final Function? ontap;
  final IconData? iconitem;

  bottomnav({required this.ontap,required this.iconitem});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>ontap!(),
      child:SizedBox(
        width:36,
        height:36,
      child: Icon(iconitem,color: Colors.white,),
      ),
      );
}
}