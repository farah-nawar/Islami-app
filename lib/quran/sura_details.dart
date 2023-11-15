import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/quran/sura_style.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routename = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      loadString(args.index);
    }
    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
                'assets/images/dark_background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                'assets/images/main_background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "${args.name}",
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: myThemeData.whitecolor,
              borderRadius: BorderRadius.circular(24),
            ),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: //condition ? true : false
            verses.length == 0
                ? Center(
              child: CircularProgressIndicator(
                color: myThemeData.primarycolor,
              ),
            )
                : ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: myThemeData.primarycolor,
                  thickness: 2,
                );
              },
              itemBuilder: (context, index) {
                return SuraStyle(name: verses[index]);
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadString(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    print(content);
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  //data class
  int index;
  String name;

  SuraDetailsArgs({required this.index, required this.name});
}
