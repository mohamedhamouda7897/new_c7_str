import 'package:flutter/material.dart';
import 'package:news_c7_str/layout/home_screen.dart';
import 'package:news_c7_str/shared/styles/my_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute:HomeLayout.routeName ,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout()
      },
      theme: MyThemeData.lightTheme,
      debugShowCheckedModeBanner:false ,

    );
  }
}
