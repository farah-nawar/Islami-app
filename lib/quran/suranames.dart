import 'package:flutter/material.dart';
import 'package:islami/quran/sura_details.dart';

class SurasNames extends StatelessWidget {
  String name;
  int index;

  SurasNames({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetails.routename,
              arguments: SuraDetailsArgs(index: index, name: name));
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
