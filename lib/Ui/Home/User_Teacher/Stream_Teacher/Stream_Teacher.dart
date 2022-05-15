import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class Stream_Teacher extends StatelessWidget {
  static const String routeName = 'Stream_Teacher';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Course_Wiget('       المرحلة '),
                Course_Wiget('  اسم الصف  '),
                Course_Wiget('  المجموعة '),
                Course_Wiget('  اسم الدرس  '),
                Course_Wiget('    موعد البث  '),
                Course_Wiget('إضافة لينك '),
                SizedBox(
                  height: 40,
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
                        text: 'حفظ', function: () {}, width: 120.0,
                        Background: Colors.green,
                        radius: 20),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                defultButton(
                    text: 'معاينة', function: () {}, radius: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
