import 'package:education_app/Ui/For_All/test.dart';
import 'package:flutter/material.dart';

class For_All_Widget extends StatelessWidget {
  String text = '';

  For_All_Widget(this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, test.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.blue,
            border: Border(
              left: BorderSide(color: Colors.black, width: 2),
              right: BorderSide(color: Colors.black, width: 2),
              bottom: BorderSide(color: Colors.black, width: 2),
              top: BorderSide(color: Colors.black, width: 2),
            )),
        child: Text(
          text,
          style:
              TextStyle(fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
