import 'package:flutter/material.dart';
import 'package:islami/hadeeth/hadeeth_tab.dart';
import 'package:islami/home/radio_tab.dart';
import 'package:islami/home/tasbeeh_tab.dart';
import 'package:islami/quran/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: "قران"),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/icon_hadeeth.png')),
                      label: "حديث"),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: "راديو"),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: "سبحة")
                ]),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [Qurantab(), Hadethtab(), Tasbeehtab(), Radiotab()];
}
