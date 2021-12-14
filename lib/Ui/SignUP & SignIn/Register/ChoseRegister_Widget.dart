import 'package:flutter/material.dart';

class ChoseRegister_Widget extends StatelessWidget {
  String Imagepath;
  String Name;

  ChoseRegister_Widget(this.Name, this.Imagepath);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              Imagepath,
              height: 100,
              width: 100,
            )),
        Text(
          Name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
