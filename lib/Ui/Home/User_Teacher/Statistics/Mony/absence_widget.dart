import 'package:flutter/material.dart';

class absence_widget extends StatefulWidget {
  String text = '';

  absence_widget(this.text);

  @override
  State<absence_widget> createState() => _absence_widgetState();
}

class _absence_widgetState extends State<absence_widget> {
  bool? _Check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(widget.text),
            Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 10),
                child: Checkbox(
                    value: _Check,
                    activeColor: Colors.green,
                    onChanged: (bool? value) {
                      setState(() {
                        _Check = value;
                      });
                    })),
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
