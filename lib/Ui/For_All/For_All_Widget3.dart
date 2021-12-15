import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class For_All_Widget3 extends StatelessWidget {
  String text2;
  String imagePath;

  For_All_Widget3({this.text2 = '', this.imagePath = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text2,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
