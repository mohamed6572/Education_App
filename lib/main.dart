import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Exam/Exam_Screan.dart';
import 'package:education_app/Ui/For_All/For_All.dart';
import 'package:education_app/Ui/For_All/test.dart';
import 'package:education_app/Ui/Home/StartScrean.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Add_Exam.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_stud/Add_stud.dart';
import 'package:education_app/Ui/Home/User_Teacher/Collection/Collection.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/Course.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Statistics.dart';
import 'package:education_app/Ui/Home/User_Teacher/Stream_Teacher/Stream_Teacher.dart';
import 'package:education_app/Ui/Home/User_Teacher/Supervisor/Add_Supervisor.dart';
import 'package:education_app/Ui/Home/User_Teacher/User_Teacher.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_Student.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Chose_Register.dart';
import 'package:education_app/Ui/parent/parent.dart';
import 'package:education_app/provider/AppConfigProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'Settings/Settings.dart';
import 'Ui/Home/User_Student/User_Student.dart';
import 'Ui/Home/User_Student/account_stud.dart';
import 'Ui/Home/User_Teacher/Add/Add_stud.dart';
import 'Ui/Home/User_Teacher/account_tech.dart';
import 'Ui/SignUP & SignIn/Login/Login_Screan_for_parent.dart';
import 'Ui/SignUP & SignIn/Login/Login_Screan_for_teacher.dart';
import 'Ui/SignUP & SignIn/Register/Register_For_Father/Register_For_Father.dart';
import 'Ui/SignUP & SignIn/Register/Register_For_Secertary/Register_For_Secertary.dart';
import 'Ui/SignUP & SignIn/Register/Register_For_Student/Register_For_Student.dart';
import 'Ui/SignUP & SignIn/Register/Register_For_Teacher/Register_For_Teacher.dart';
import 'Ui/parent/account.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (BuildContext) {
        return AppConfigProvider();
      },
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education_App',
      locale: Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      routes: {
        Start_Screan.routeName: (context) => Start_Screan(),
        Login_Screan.routeName: (context) => Login_Screan(),
        Chose_Register.routeName: (context) => Chose_Register(),
        Register_For_Student.routeName: (context) => Register_For_Student(),
        Register_For_Father.routeName: (context) => Register_For_Father(),
        Register_For_Teacher.routeName: (context) => Register_For_Teacher(),
        Register_For_Secertary.routeName: (context) => Register_For_Secertary(),
        User_Student.routeName: (context) => User_Student(),
        Settings.routeName: (context) => Settings(),
        Exam_Screan.routeName: (context) => Exam_Screan(),
        parent.routeName: (context) => parent(),
        User_Teacher.routeName: (context) => User_Teacher(),
        Stream_Teacher.routeName: (context) => Stream_Teacher(),
        Course.routeName: (context) => Course(),
        Collection.routeName: (context) => Collection(),
        Statistics.routeName: (context) => Statistics(),
        Add_Supervisor.routeName: (context) => Add_Supervisor(),
        Add_Exam.routeName: (context) => Add_Exam(),
        For_All.routeName: (context) => For_All(),
        Login_Screan_for_Student.routeName: (context) =>
            Login_Screan_for_Student(),
        Login_Screan_for_teacher.routeName: (context) =>
            Login_Screan_for_teacher(),
        Login_Screan_for_parent.routeName: (context) =>
            Login_Screan_for_parent(),
        accountset.routeName: (context) => accountset(),
        account_tech.routeName: (context) => account_tech(),
        account_stud.routeName: (context) => account_stud(),
        test.routeName: (context) => test(),
        Add_stud.routeName: (context) => Add_stud(),
        Add.routeName: (context) => Add(),
      },
      initialRoute: Start_Screan.routeName,
    );
  }
}
