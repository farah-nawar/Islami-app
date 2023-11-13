import 'package:flutter/material.dart';
import 'package:islami/hadeeth/hadeeth_Details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/quran/sura_details.dart';
import 'package:islami/theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SuraDetails.routename: (context) => SuraDetails(),
        HadeethDetails.routename: (context) => HadeethDetails(),
      },
      theme: myThemeData.lightmode,
      darkTheme: myThemeData.darkmode,
    );
  }
}
