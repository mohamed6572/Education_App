import 'package:flutter/material.dart';

class Parent_widget extends StatefulWidget {
  String text = '';
  String text2;

  Parent_widget(this.text, this.text2);

  @override
  State<Parent_widget> createState() => _Parent_widgetState();
}

class _Parent_widgetState extends State<Parent_widget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(widget.text),
            Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 10),
                child: Text(
                  widget.text2,
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 15, color: Colors.red),
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
      ],
    );
  }
}
