import 'package:flutter/material.dart';

class stat_widget extends StatelessWidget {
  String text;

  stat_widget(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
