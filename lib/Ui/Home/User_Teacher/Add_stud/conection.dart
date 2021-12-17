import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class conection extends StatelessWidget {
  static const String routeName = 'conection';

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
                Course_Wiget('         المرحلة '),
                Course_Wiget('           الصف   '),
                Course_Wiget('   المجموعه'),
                Course_Wiget('    اسم الطالب'),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                            blurRadius: 8),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 9,
                    decoration: InputDecoration(
                        hintText: '..........نص الرسالة',
                        hintStyle: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        )),
                  ),
                ),
                //   child: Text(
                //     '..........نص الرسالة',
                //     style: Theme.of(context).textTheme.headline1,
                //     textAlign: TextAlign.end,
                //   ),
                // ),
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
                    'إرسال',
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
