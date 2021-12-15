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
                Text(
                  'مرحبا بك يا   \n استاذ احمد',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 13, color: Colors.white),
                ),
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
              Course_Wiget('           المرحلة '),
              Course_Wiget('              الصف   '),
              Course_Wiget('      المجموعه'),
              Course_Wiget('     اسم المادة '),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 5))),
                        onPressed: () {},
                        child: Text(
                          'حذف',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 5))),
                        onPressed: () {},
                        child: Text(
                          'حفظ',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 18,
                              color: Colors.black),
                        )),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
