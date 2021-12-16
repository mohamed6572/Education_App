import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = 'Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('للتواصل معنا'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'للتواصل معنا على الرقم الأتي',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                size: 40,
                color: Colors.green,
              ),
              Text(
                "    01014064040",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Cairo", fontSize: 30),
              ),
            ],
          )
        ],
      ),
    );
  }
}
