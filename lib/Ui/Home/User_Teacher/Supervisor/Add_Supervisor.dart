import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/Ui/Home/User_Teacher/Supervisor/Supervisor_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Supervisor extends StatelessWidget {
  static const String routeName = 'Add_Supervisor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Person'),
        backgroundColor: MyThemeData.primaryColorDark,
        actions: [
          Expanded(
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Course_Wiget('                 المرحلة '),
                      Course_Wiget('                    الصف   '),
                      Course_Wiget('           المجموعه'),
                      Course_Wiget('       اسم المشرف  '),
                      Course_Wiget('   اسم المجموعة'),
                      Course_Wiget('          اسم المادة'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'الصلاحيات',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 25, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Supervisor_Widget('. إضافة كورسات و امتحانات'),
                  SizedBox(
                    width: 20,
                  ),
                  Supervisor_Widget('. الموافقة على الطلبات'),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Supervisor_Widget('. نتائج الامتحانات'),
                  SizedBox(width: 45),
                  Supervisor_Widget('. الحضور والغياب '),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Supervisor_Widget('. المدفوعات'),
                  SizedBox(
                    width: 35,
                  ),
                  Supervisor_Widget('. الاعلانات و التواصل'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {},
                    child: Text(
                      'حذف',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'حفظ',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
