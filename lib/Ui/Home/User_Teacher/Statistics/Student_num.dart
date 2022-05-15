import 'package:education_app/models/StartScreanModel.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class Student_num extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defultColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) => BuildStudNum(list[index]),
            separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
            itemCount: list.length),
      ),
    );
  }

  List<SubjectModel> list = [
    SubjectModel(text: 'المرحلة'),
    SubjectModel(text: '   الصف  '),
    SubjectModel(text: '-:مجموعة الساعة'),
    SubjectModel(text: '        اجمالي الطلاب    '),
  ];

  Widget BuildStudNum(SubjectModel model) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

            Container(
              width: 170,
              child: defultFormField(label: '', border: OutlineInputBorder()),
            ),
          SizedBox(width: 10,),
          Text(
            model.text,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          )
        ],
      );
}
