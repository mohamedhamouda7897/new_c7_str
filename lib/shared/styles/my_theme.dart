import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightprimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: lightprimary,
        iconTheme: IconThemeData(color: Colors.white)),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 20, color: lightprimary),
        subtitle2: TextStyle(fontSize: 20, color: Colors.white)),
  );
}
