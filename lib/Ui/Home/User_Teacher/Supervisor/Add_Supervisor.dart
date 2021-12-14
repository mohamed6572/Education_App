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
                Text('مرحبا بك يا   \n استاذ احمد'),
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
            Course_Wiget('     إضافة مشرف  '),
            Course_Wiget('المرحلة الدراسية'),
            Course_Wiget('         اسم الصف  '),
            Course_Wiget('    اسم المجموعة'),
            Course_Wiget('          اسم المادة'),
            SizedBox(
              height: 20,
            ),
            Text(
              'الصلاحيات',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Supervisor_Widget('إضافة كورسات و امتحانات'),
                  SizedBox(
                    width: 20,
                  ),
                  Supervisor_Widget('الموافقة على الطلبات'),
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
                  Supervisor_Widget('نتأج الامتحانات'),
                  SizedBox(width: 45),
                  Supervisor_Widget('الحضور والغياب'),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Supervisor_Widget('المدفوعات'),
                  SizedBox(
                    width: 15,
                  ),
                  Supervisor_Widget('إضافة إعلانات التواصل'),
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
                    onPressed: () {},
                    child: Text(
                      'حفظ',
                      style: Theme.of(context).textTheme.headline1,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'معاينة',
                      style: Theme.of(context).textTheme.headline1,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
