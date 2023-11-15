import 'package:flutter/material.dart';

class myThemeData {
  static Color primarycolor = Color(0xffB7935F);
  static Color blackcolor = Color(0xff242424);
  static Color whitecolor = Colors.white;
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowDark = Color(0xffFACC1D);

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
          ),
          headline2: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: primarycolor,
          )));
  static ThemeData darkmode = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackcolor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yellowDark, unselectedItemColor: whitecolor),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: blackcolor,
          ),
          subtitle1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: whitecolor,
          ),
          subtitle2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: whitecolor,
          ),
          headline2: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: primaryDark,
          )));
}
