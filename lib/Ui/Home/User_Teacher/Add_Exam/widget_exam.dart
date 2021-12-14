import 'package:flutter/material.dart';

import 'Chose_Widget.dart';
import 'answare_Widget.dart';

class add_ex extends StatefulWidget {
  @override
  State<add_ex> createState() => _add_exState();
}

class _add_exState extends State<add_ex> {
  bool? _Check2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            answare_Widget(''),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 10),
                    child: Column(
                      children: [
                        Text(''),
                        Checkbox(
                            value: _Check2,
                            activeColor: Colors.green,
                            onChanged: (bool? value) {
                              setState(() {
                                _Check2 = value;
                              });
                            }),
                      ],
                    )),
              ],
            ),
            Chose_Widget(''),
          ],
        ),
      ),
    );
  }
}
