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
            Spacer(),
            Image.asset(
              'assets/images/app_logo.jpeg',
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
              child: Text(
                'ابدأ',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 25, color: Colors.black),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  'Designed',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
                Text(
                  'By Mohamed Hany',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
