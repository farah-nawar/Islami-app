import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: // Text(AppLocalizations.of(context)!.dark)
                provider.appTheme == ThemeMode.dark
                    ? getSelectedWidget(AppLocalizations.of(context)!.dark)
                    : getUnselectedWidget(AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light
                ? getSelectedWidget(AppLocalizations.of(context)!.light)
                : getUnselectedWidget(AppLocalizations.of(context)!.light),
            //Text(AppLocalizations.of(context)!.light)
          ),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline2,
        ),
        Icon(
          Icons.check,
          size: 30,
          color: myThemeData.primarycolor,
        ),
      ],
    );
  }

  Widget getUnselectedWidget(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
