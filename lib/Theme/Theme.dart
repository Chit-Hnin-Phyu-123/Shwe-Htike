import 'package:flutter/material.dart';

class ColorTheme {
  final Color primaryColor = const Color(0xFF018226);
  final Color secandaryColor = const Color(0xFF62b17a);
}

class FontStyle {
  final TextStyle lableHeaderStyle = TextStyle(
      color: ColorTheme().primaryColor,
      fontSize: 25,
      fontWeight: FontWeight.w500);
  final TextStyle whiteFont = const TextStyle(color: Colors.white, fontSize: 14);
  final TextStyle greyFont = const TextStyle(color: Colors.grey, fontSize: 13);
  final TextStyle appbarLabel = const TextStyle(color: Colors.yellow, fontSize: 16);
}
