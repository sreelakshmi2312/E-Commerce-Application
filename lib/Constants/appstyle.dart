import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double fontsize , Color iconcolor , FontWeight fontweight){
  return GoogleFonts.poppins(fontSize: fontsize,color:iconcolor,fontWeight: fontweight);
}

// TextStyle appStyle(double fontSize, Color color, FontWeight fontWeight, double letterSpacing) {
//     return TextStyle(
//       fontSize: fontSize,
//       color: color,
//       fontWeight: fontWeight,
//       letterSpacing: letterSpacing,
//     );
//   }