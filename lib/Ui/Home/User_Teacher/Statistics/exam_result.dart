import 'package:education_app/Ui/Home/User_Teacher/Statistics/stat_widget.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class exam_result extends StatefulWidget {
  @override
  State<exam_result> createState() => _exam_resultState();
}

class _exam_resultState extends State<exam_result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defultColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text('مجموعة الساعة ',
                            style: TextStyle(fontFamily: 'Cairo'),

                          ),
                          Spacer(),
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text('الامتحان رقم ',  style: TextStyle(fontFamily: 'Cairo'),),
                          SizedBox(width: 7,)

                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text(' الصف',  style: TextStyle(fontFamily: 'Cairo'),),
                          Spacer(),
                          Container(
                            width: 70,
                            height: 40,
                            child: defultFormField(label: '', border: OutlineInputBorder()),
                          ),
                          Text('المرحلة الدراسية ',  style: TextStyle(fontFamily: 'Cairo'),),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'الترتيب',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 10,
                        ),
                      ),
                      Text(
                        'النتيجة',
                        style: TextStyle(
                            fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'الاسم',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'اعلى درجة',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 30),
                        child: Text(
                          '90%',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          'محمد هشام',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'حفظ ',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
              ),
              Container(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'طباعة',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(defultColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
