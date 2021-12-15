import 'package:flutter/material.dart';

class Student_num extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'المرحلة',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'الصف',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'طالب',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  ' -:مجموعة الساعة ',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'طالب',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  ' -:مجموعة الساعة ',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'طالب',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  ' -:مجموعة الساعة ',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'طالب',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 3),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'اجمالي الطلاب',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
