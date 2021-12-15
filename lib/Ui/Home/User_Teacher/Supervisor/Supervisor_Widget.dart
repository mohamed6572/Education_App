import 'package:flutter/material.dart';

class Supervisor_Widget extends StatefulWidget {
  String text = '';

  Supervisor_Widget(this.text);

  @override
  State<Supervisor_Widget> createState() => _Supervisor_WidgetState();
}

class _Supervisor_WidgetState extends State<Supervisor_Widget> {
  bool? _Check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 15, color: Colors.black),
          ),
          Checkbox(
              value: _Check,
              activeColor: Colors.green,
              onChanged: (bool? value) {
                setState(() {
                  value = _Check;
                });
              })
        ],
      ),
    );
  }
}
