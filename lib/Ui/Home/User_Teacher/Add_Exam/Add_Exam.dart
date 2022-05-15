import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Chose_Widget.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/Exam_Widget.dart';
import 'package:education_app/Ui/Home/User_Teacher/Add_Exam/widget_exam.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/shared/components/components.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Course_Wiget('       المرحلة '),
              Course_Wiget('          الصف   '),
              Course_Wiget('  المجموعه'),
              Course_Wiget('اسم الوحدة '),
              Course_Wiget('   اسم الدرس'),
              Course_Wiget('الامتحان رقم'),
              SizedBox(
                height: 20,
              ),
              Text(
                'خيارات الامتحان',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                    fontSize: 25,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Exam_Widget('. التحميل والبدء مباشره'),
              Exam_Widget('. إظهار الاجابات الصحيحة'),
              Exam_Widget('. ترتيب الاسئلة بشكل عشوائي'),
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
                    width: 98,
                    height: 40,
                    child: defultFormField(
                      label: '0:00',
                      textColor: Colors.black,
                      textSize: 13,
                      border: OutlineInputBorder(),
                    ),
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
                      fontWeight: FontWeight.bold,
                      //decoration: TextDecoration.underline,
                      fontFamily: "Cairo",
                      fontSize: 18,
                      color: Colors.black),
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Exam_Widget('مقالي'),
              Exam_Widget('صح أو خطأ'),
              Exam_Widget('اختيارات'),
              Center(
                child: defultFormField(
                  label: 'add here ...',
                  textColor: Colors.black,
                  suffix: Icons.camera_alt,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'الاجابة',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold,fontFamily: 'Cairo'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              defultFormField(
                label: 'your answer ? ',
                prefix: Icons.check_box_outline_blank,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 10,
              ),
              defultFormField(
                label: 'your answer ? ',
                prefix: Icons.check_box_outline_blank,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 10,
              ),
              defultFormField(
                label: 'your answer ? ',

                prefix: Icons.check_box_outline_blank,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 10,
              ),
              defultFormField(
                label: 'your answer ? ',
                prefix: Icons.check_box_outline_blank,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: defultButton(text: 'اضف سؤال',
                        Background: Colors.green,
                        width: 100.0,
                       radius: 15.0,
                        textSize: 17.0,
                        function: (){}),
                  ),

                  Expanded(
                    child: defultButton(text:'حذف سؤال',
                        width: 100,
                       Background: Colors.red,
                       radius: 15.0,
                        textSize: 17.0,
                        function: (){}),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              defultButton(text:'معاينة',

                 radius: 15.0,
                  textSize: 17.0,
                  function: (){})
            ],
          ),
        ),
      ),
    );
  }
}
