import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeeth/item_hadeth_name.dart';
import 'package:islami/theme.dart';

class Hadethtab extends StatefulWidget {
  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadHadeth();
    }
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset('assets/images/hadeeth_image.png')),
          Divider(
            color: myThemeData.primarycolor,
            thickness: 2,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Divider(
            color: myThemeData.primarycolor,
            thickness: 2,
          ),
          Expanded(
            flex: 3,
            child: ahadeth.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                      color: myThemeData.primarycolor,
                    ),
                  )
                : ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: myThemeData.primarycolor,
                        thickness: 1,
                      );
                    },
                    itemBuilder: (context, index) {
                      return HadethName(hadeth: ahadeth[index]);
                    },
                    itemCount: 20,
                  ),
          )
        ],
      ),
    );
  }

  void loadHadeth() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allcontent = content.split('#\r\n');
    for (int i = 0; i < allcontent.length; i++) {
      //print(hadeth[i]);
      List<String> allAhadeth = allcontent[i].split('\n');
      String title = allAhadeth[0]; //title
      allAhadeth.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: allAhadeth);
      ahadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.content, required this.title});
}
