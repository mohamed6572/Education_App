import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Course extends StatelessWidget {
  static const String routeName = 'addCourse';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                defultContainer(
                    width: 150.0,
                    height: 150.0,
                    widget: Icon(Icons.add),
                    radius: 80.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Course_Wiget('      المرحلة '),
                    Course_Wiget('         الصف   '),
                    Course_Wiget(' المجموعه'),
                    Course_Wiget('اسم الوحدة'),
                    Course_Wiget(' اسم الدرس '),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      spreadRadius: 0,
                                      blurRadius: 1),
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  'PDF - URL - Image - word - document',
                                  style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 15,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'إضافة  ',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
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
                        text: 'معاينة', function: () {}, width: 120.0,
                        radius: 20),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
