import 'package:flutter/material.dart';

import 'month_wifget.dart';

class Month extends StatefulWidget {
  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {
  bool? _Check = false;

  bool? _Check1 = false;

  bool? _Check2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'الشهر',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 25, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Month_Widget('الصف'),
              Month_Widget('المرحلة الدراسية'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Month_Widget('شهر'),
              Month_Widget('محموعة الساعة'),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'حالة الدفع',
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
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'م',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
              SizedBox(
                width: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 10),
                  child: Checkbox(
                      value: _Check,
                      activeColor: Colors.green,
                      onChanged: (bool? value) {
                        setState(() {
                          _Check = value;
                        });
                      })),
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
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
                  '-1',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'امتنعوا عن دفع الشهر',
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
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'م',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
              SizedBox(
                width: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 10),
                  child: Checkbox(
                      value: _Check1,
                      activeColor: Colors.green,
                      onChanged: (bool? value) {
                        setState(() {
                          _Check1 = value;
                        });
                      })),
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
                  'احمد هشام',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
                  '-1',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.black),
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
    ));
  }
}
