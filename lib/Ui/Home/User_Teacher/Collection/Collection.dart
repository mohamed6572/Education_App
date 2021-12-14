import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  static const String routeName = 'Collection';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Course_Wiget('اسم  المجموعه'),
              Course_Wiget('      اسم الصف  '),
              Course_Wiget('     اسم المادة '),
              Course_Wiget('إضافة مجموعة'),
              SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 5))),
                      onPressed: () {},
                      child: Text(
                        'حفظ',
                        style: Theme.of(context).textTheme.headline1,
                      )),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
