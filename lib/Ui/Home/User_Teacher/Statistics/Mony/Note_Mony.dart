import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'note_Widget.dart';

class Note_Mony extends StatefulWidget {
  @override
  State<Note_Mony> createState() => _Note_MonyState();
}

class _Note_MonyState extends State<Note_Mony> {
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
              'حجز المذكرات',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Note_Widget('المرحلة الدراسية'),
                Note_Widget('الصف'),
                Note_Widget('مجموعة الساعة'),
              ],
            ),
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'تاريخ الحجز',
                  style: Theme.of(context).textTheme.headline2,
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
                'حالة الدفع',
                style: Theme.of(context).textTheme.headline2,
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
                  style: Theme.of(context).textTheme.headline2,
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
                  style: Theme.of(context).textTheme.headline2,
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
                  '17/8/2020',
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
                'استغنو عن الحجز',
                style: Theme.of(context).textTheme.headline2,
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
                  style: Theme.of(context).textTheme.headline2,
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
                  style: Theme.of(context).textTheme.headline2,
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
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 10),
                      child: Column(
                        children: [
                          Text('لا'),
                          Checkbox(
                              value: _Check1,
                              activeColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  _Check1 = value;
                                });
                              }),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 10),
                      child: Column(
                        children: [
                          Text('نعم'),
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
                ],
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
                  'احمد هشام',
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
        ],
      ),
    ));
  }
}
