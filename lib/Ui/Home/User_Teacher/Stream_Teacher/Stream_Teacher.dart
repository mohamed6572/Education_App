import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class Stream_Teacher extends StatelessWidget {
  static const String routeName = 'Stream_Teacher';

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
            Course_Wiget('إضافة لينك '),
            Course_Wiget('   اسم درس  '),
            Course_Wiget('   موعد البث '),
            Course_Wiget('  اسم الصف '),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'معاينة',
                      style: Theme.of(context).textTheme.headline1,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'حذف',
                      style: Theme.of(context).textTheme.headline1,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'حفظ',
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
