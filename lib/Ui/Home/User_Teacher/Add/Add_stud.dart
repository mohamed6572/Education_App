import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  static const String routeName = 'Add';

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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Icon(Icons.add),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Course_Wiget('اسم الاعلان'),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'وصف الاعلان',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                            blurRadius: 6),
                      ],
                      color: Colors.white),
                ),
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
