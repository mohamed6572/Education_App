import 'package:education_app/provider/AppConfigProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDarkMode()
                ? getUnselectedWidget("المضئ", context)
                : getSelectedItemWidget("المضئ", context),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()
                ? getSelectedItemWidget("المظلم", context)
                : getUnselectedWidget("المظلم", context),
          )
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:
                TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
          ),
          Icon(Icons.check, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }

  Widget getUnselectedWidget(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
