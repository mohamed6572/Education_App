import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/Ui/Home/User_Teacher/Supervisor/Supervisor_Widget.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Supervisor extends StatelessWidget {
  static const String routeName = 'Add_Supervisor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Course_Wiget('              المرحلة '),
                Course_Wiget('                 الصف   '),
                Course_Wiget('        المجموعه'),
                Course_Wiget('    اسم المشرف  '),
                Course_Wiget('اسم المجموعة'),
                Course_Wiget('       اسم المادة'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'الصلاحيات',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 25, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Supervisor_Widget('. إضافة كورسات و امتحانات'),
                Supervisor_Widget('. الموافقة على الطلبات'),
                Supervisor_Widget('. نتائج الامتحانات'),
                Supervisor_Widget('. الحضور والغياب '),
                Supervisor_Widget('. المدفوعات'),
                Supervisor_Widget('. الاعلانات و التواصل'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    defultButton(
                        text: 'حذف',
                        function: () {},
                        width: 120.0,
                        Background: Colors.red,
                        radius: 20),
                    defultButton(
                        text: 'حفظ',
                        function: () {},
                        width: 120.0,
                        Background: Colors.green,
                        radius: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
