import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/Mony.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Student_num.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/absence_&_presence.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/exam_result.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  static const String routeName = 'Statistics';

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: defultColor,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 3),
                  child: defultTextButton(
                      text: 'نتائج الامتحانات',
                      function: () {
                        navigateTo(context, exam_result());
                      },
                      color: defultColor,
                      textColor: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: defultColor,
                  padding: EdgeInsets.symmetric(horizontal: 71, vertical: 3),
                  child: defultTextButton(
                      text: 'الغياب والحضور',
                      function: () {
                        navigateTo(context, absence_presence());
                      },
                      color: defultColor,
                      textColor: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: defultColor,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 3),
                  child: defultTextButton(
                      text: 'عدد الطلاب المشتركين',
                      function: () {
                        navigateTo(context, Student_num());
                      },
                      color: defultColor,
                      textColor: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: defultColor,
                  padding: EdgeInsets.symmetric(horizontal: 91, vertical: 3),
                  child: defultTextButton(
                      text: 'الحسابات',
                      function: () {
                        navigateTo(context, Mony());
                      },
                      color: defultColor,
                      textColor: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
