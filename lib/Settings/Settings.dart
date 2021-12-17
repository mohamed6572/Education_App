import 'package:education_app/provider/AppConfigProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LanguageBottomSheet.dart';
import 'ThemeBottomSheet.dart';

class Settings extends StatefulWidget {
  static const String routeName = 'sett';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'اللغة',
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Cairo",
            ),
          ),
          InkWell(
            onTap: () {
              ShowLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 6),
                  ],
                  border: Border.all(color: Colors.blue)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == 'en' ? "English" : "العربية",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          ),
          Text(
            "النمط",
            style: TextStyle(fontFamily: "Cairo", fontSize: 18),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 6),
                  ],
                  border: Border.all(color: Colors.blue),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appTheme == ThemeMode.light ? "المضئ" : "المظلم",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
