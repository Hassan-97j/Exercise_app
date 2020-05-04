import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

final Color primaryColor = Color(0xF8FAF6F6 );
final Color secondaryColor = Color(0xfff5ce88);
final Color color1 = Color(0xFFC7B8F5);
final Color primaryTextColor = Colors.black;
final double titleFontSize = 24;

final activeIconcoor = Color(0xffe68324);

TextStyle setTextStyle(
    {color = Colors.black45,
      double size = 14,
      weight = FontWeight.normal
      
      
      }) {
  return TextStyle(

    fontWeight: weight,
    color: color,
    fontSize: size,
  );
}

