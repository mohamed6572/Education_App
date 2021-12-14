import 'package:education_app/Ui/For_All/For_All.dart';
import 'package:flutter/material.dart';

class Start_Screan extends StatelessWidget {
  static const String routeName = 'Start';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/loogo.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, For_All.routeName);
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
