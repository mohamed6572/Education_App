import 'package:flutter/material.dart';

class test extends StatelessWidget {
  static const String routeName = 'tesst';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  برجاء التسجيل    \nلمشاهدة التفاصيل',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              InkWell(
                child: Text(
                  'سجل الان',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
