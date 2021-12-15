import 'package:flutter/material.dart';

class Chose_Widget extends StatelessWidget {
  String text;

  Chose_Widget(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          ),
          Container(
            width: 300,
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
          )
        ],
      ),
    );
  }
}
