import 'package:flutter/material.dart';

class WhiteTheme {
  ThemeData get themeData {
    return ThemeData.light().copyWith(
      primaryColor: Color(0xFFFF6600),
      canvasColor: Colors.white,
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ThemeData.light().textTheme.copyWith(
          headline4: ThemeData.light().textTheme.headline4.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
    );
  }
}
