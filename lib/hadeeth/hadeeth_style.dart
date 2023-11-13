import 'package:flutter/material.dart';

class HadeethStyle extends StatelessWidget {
  String name;

  HadeethStyle({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        name,
        style: Theme.of(context).textTheme.subtitle2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
