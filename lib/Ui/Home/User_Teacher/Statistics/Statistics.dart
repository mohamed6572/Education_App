import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/Mony.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Student_num.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/absence_&_presence.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/exam_result.dart';
import 'package:education_app/Ui/Home/User_Teacher/User_Teacher.dart';
import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  static const String routeName = 'Statistics';

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
          title: Text('Person'),
          backgroundColor: MyThemeData.primaryColorDark,
          actions: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.13,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/teacher.jpg'),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    'مرحبا بك يا   \n استاذ احمد',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, User_Teacher.routeName);
                      },
                      icon: Icon(Icons.home),
                    ))),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'الاحصائيات',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 0;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    color: Colors.grey,
                    child: Text(
                      'نتائج الامتحانات',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 1;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    color: Colors.grey,
                    child: Text(
                      'الغياب والحضور',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 2;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    color: Colors.grey,
                    child: Text(
                      'عدد الطلاب المشتركين',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 3;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                    color: Colors.grey,
                    child: Text(
                      'الحسابات',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ViewsIndex(Index),
      ),
    );
  }

  Widget ViewsIndex(int index) {
    if (index == 0) {
      return exam_result();
    } else if (index == 1) {
      return absence_presence();
    } else if (index == 2) {
      return Student_num();
    } else if (index == 3) {
      return Mony();
    }
    return Container();
  }
}
