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
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
