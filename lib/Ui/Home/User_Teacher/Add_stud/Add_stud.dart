import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class Add_stud extends StatelessWidget {
  static const String routeName = 'Add_stud';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
        title: Text('Person'),
        backgroundColor: MyThemeData.primaryColorDark,
        actions: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/teacher.jpg'),
                ),
                SizedBox(
                  width: 9,
                ),
                Text('مرحبا بك يا   \n استاذ احمد'),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Course_Wiget('اسم الطالب'),
                Course_Wiget('    المرجله'),
                Course_Wiget(' المجموعة'),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'اضف',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
