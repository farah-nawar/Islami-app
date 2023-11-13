import 'package:flutter/material.dart';
import 'package:islami/hadeeth/hadeeth_style.dart';
import 'package:islami/hadeeth/hadeeth_tab.dart';
import 'package:islami/theme.dart';

class HadeethDetails extends StatefulWidget {
  static const String routename = 'Hadeeth-details';

  @override
  State<HadeethDetails> createState() => _HadeethDetailsState();
}

class _HadeethDetailsState extends State<HadeethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
              "${args.title}",
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
            child: ListView.builder(
              itemBuilder: (context, index) {
                return HadeethStyle(name: args.content[index]);
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
