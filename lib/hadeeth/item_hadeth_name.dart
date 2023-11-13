import 'package:flutter/material.dart';
import 'package:islami/hadeeth/hadeeth_Details.dart';

import 'hadeeth_tab.dart';

class HadethName extends StatelessWidget {
  Hadeth hadeth;

  HadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(HadeethDetails.routename, arguments: hadeth);
        },
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
