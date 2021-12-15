import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Chose_Widget.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Exam_Widget.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/widget_exam.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Exam extends StatefulWidget {
  static const String routeName = 'Add_Exam';

  @override
  State<Add_Exam> createState() => _Add_ExamState();
}

class _Add_ExamState extends State<Add_Exam> {
  bool? _Check2 = false;

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
            Course_Wiget('      المرحلة '),
            Course_Wiget('         الصف   '),
            Course_Wiget(' المجموعه'),
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
                              color: Colors.blue,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                              blurRadius: 6),
                        ],
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    ' اسم الوحدة',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                              color: Colors.blue,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                              blurRadius: 6),
                        ],
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '   اسم الدرس',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                              blurRadius: 6),
                        ],
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'الامتحان رقم ',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'خيارات الامتحان',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 25, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Exam_Widget('. التحميل والبدء مباشره'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Exam_Widget('. إظهار الاجابات الصحيحة'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Exam_Widget('. ترتيب الاسئلة بشكل عشوائي'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '. دقيقة',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Center(child: Text('00.00')),
                ),
                Exam_Widget('مدة الاختبار'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Exam_Widget('. ظهور النتيجة بعد انتهاء الامتحان'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Exam_Widget('. تحميل الامتحان والبدء في وقت لاحق'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'السؤال رقم 1',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Exam_Widget('صورة'),
                    Exam_Widget('مقالي'),
                    Exam_Widget('صح أو خطأ'),
                    Exam_Widget('اختيارات'),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 8),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 6),
                  ],
                ),
                child: Text(
                  '..... اضف سؤال',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 10),
                        child: Column(
                          children: [
                            Text(''),
                            Checkbox(
                                value: _Check2,
                                activeColor: Colors.green,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _Check2 = value;
                                  });
                                }),
                          ],
                        )),
                    Chose_Widget('الاختيارات'),
                  ],
                ),
              ),
            ),
            add_ex(),
            add_ex(),
            add_ex(),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'اضف سؤال',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: Colors.black),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        onPressed: () {},
                        child: Text(
                          'حذف سؤال',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: Colors.black),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'معاينة',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
