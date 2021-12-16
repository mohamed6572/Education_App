import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Add_Exam.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_stud/conection.dart';
import 'package:education_app/Ui/Home/User_Teacher/Collection/Collection.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/Course.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Statistics.dart';
import 'package:education_app/Ui/Home/User_Teacher/Stream_Teacher/Stream_Teacher.dart';
import 'package:education_app/Ui/Home/User_Teacher/Supervisor/Add_Supervisor.dart';
import 'package:education_app/Ui/Home/User_Teacher/account_tech.dart';
import 'package:education_app/Ui/Home/User_Teacher/teacher_Widget/teacher_Widget.dart';
import 'package:flutter/material.dart';

import 'Add/Add_stud.dart';
import 'Add_stud/Add_stud.dart';

class User_Teacher extends StatelessWidget {
  static const String routeName = 'TEach';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
        title: Text('Person'),
        backgroundColor: MyThemeData.primaryColorDark,
        actions: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/teacher.jpg'),
                ),
                SizedBox(
                  width: 9,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, account_tech.routeName);
                    },
                    child: Text(
                      'مرحبا بك يا    \n استاذ احمد',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 13,
                          color: Colors.white),
                    )),
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Stream_Teacher.routeName);
                    },
                    child: teacher_Widget(
                      text: 'إضافة\n بث مباشر',
                      color: Colors.lightGreen,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Collection.routeName);
                    },
                    child: teacher_Widget(
                      text: 'إضافة\n مجموعة',
                      color: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Course.routeName);
                    },
                    child: teacher_Widget(
                      text: 'إضافة الكورس',
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Statistics.routeName);
                    },
                    child: teacher_Widget(
                      text: 'النتائج والاحصائيات',
                      color: Colors.tealAccent,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Add_Supervisor.routeName);
                    },
                    child: teacher_Widget(
                        text: 'إضافة \nمشرف ', color: Colors.teal),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Add_Exam.routeName);
                    },
                    child: teacher_Widget(
                      text: 'إضافة امتحان',
                      color: Colors.cyan,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Add.routeName);
                    },
                    child: teacher_Widget(
                      text: 'إضافة \nإعلان ',
                      color: Colors.tealAccent,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Add_stud.routeName);
                    },
                    child: teacher_Widget(
                        text: 'إضافة \nطالب ', color: Colors.teal),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, conection.routeName);
                    },
                    child: teacher_Widget(
                        text: 'التواصل\n مع الطلاب', color: Colors.teal),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
