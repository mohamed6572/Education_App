import 'package:flutter/material.dart';

class liveModel {
  String text2;
  String text;
  String imagePath;

  liveModel({required this.imagePath,
    required this.text2,
    required this.text,
  });
}

class corseModel {
  String text2;
  String imagePath;
  String text;

  corseModel(
      {required this.imagePath, required this.text2, required this.text});
}

class SubjectModel {
  String text;

  SubjectModel({required this.text});
}

class BottomSeetModel {
  Widget widget;
  String text;

  BottomSeetModel({required this.text, required this.widget});
}

class HomeModel {
  String imagePath;
Widget widget ;
  String text;


  HomeModel({required this.text, required this.imagePath,required this.widget});
}
