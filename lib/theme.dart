import 'package:flutter/material.dart';

class myThemeData {
  static Color primarycolor = Color(0xffB7935F);
  static Color blackcolor = Color(0xff242424);
  static Color whitecolor = Colors.white;

  static ThemeData lightmode = ThemeData(
      primaryColor: primarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackcolor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackcolor, unselectedItemColor: whitecolor),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: blackcolor,
          ),
          subtitle1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )));
  static ThemeData darkmode = ThemeData();
}
