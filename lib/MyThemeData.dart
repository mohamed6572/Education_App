import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemeData {
  static const Color primaryColorDark = Colors.white;
  // Color.fromARGB(255, 20, 26, 46);
  static const Color accentColorDark = Color.fromARGB(255, 250, 204, 29);
  static const Color primaryColorLight = Colors.white;

  static final ThemeData DarkTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: primaryColorDark,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          selectedItemColor: defultColor,
          unselectedItemColor: Colors.grey
      ),
      backgroundColor: primaryColorDark,
      primaryColor: primaryColorDark,
      scaffoldBackgroundColor: primaryColorLight,
      textTheme: TextTheme(
          headline1:
              TextStyle(fontFamily: "Cairo", fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontFamily: "Cairo", fontSize: 15, color: Colors.black)));
  static final ThemeData LightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 20,
      selectedItemColor: defultColor,
      unselectedItemColor: Colors.grey
    ),
      backgroundColor: primaryColorDark,
      primaryColor: primaryColorLight,
      scaffoldBackgroundColor: primaryColorLight,
      textTheme: TextTheme(
          headline1:
              TextStyle(fontFamily: "Cairo", fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontFamily: "Cairo", fontSize: 15, color: Colors.black)));
}
