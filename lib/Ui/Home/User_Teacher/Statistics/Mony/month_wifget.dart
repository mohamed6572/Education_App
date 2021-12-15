import 'package:flutter/material.dart';

class Month_Widget extends StatelessWidget {
  String text;

  Month_Widget(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 3),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
