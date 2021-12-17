import 'package:flutter/material.dart';

class Course_Wiget extends StatelessWidget {
  String text;

  Course_Wiget(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.only(right: 8, left: 8),
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
            child: TextFormField(
              decoration: InputDecoration(
                  counterStyle: TextStyle(color: Colors.transparent),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
