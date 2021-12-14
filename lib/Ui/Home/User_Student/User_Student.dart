import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Settings/Settings.dart';
import 'package:education_app/Ui/Exam/Exam.dart';
import 'package:education_app/Ui/Home/User_Student/Category_Screan/categoryDetailsScrean.dart';
import 'package:education_app/Ui/Home/User_Student/Notification/Notification.dart';
import 'package:education_app/Ui/Home/User_Student/Stream/StreamDetailsScrean.dart';
import 'package:education_app/Ui/Home/User_Student/account_stud.dart';
import 'package:education_app/Ui/Home/User_Student/communication/communication.dart';
import 'package:flutter/material.dart';

import 'Category_Screan/Item_Category.dart';
import 'Category_Screan/categoris.dart';

class User_Student extends StatefulWidget {
  static const String routeName = 'User_Stud';

  @override
  State<User_Student> createState() => _User_StudentState();
}

class _User_StudentState extends State<User_Student> {
  int Index = 0;

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
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/stud_logo.jpg'),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, account_stud.routeName);
                    },
                    child: Text(
                      'مرحبا بك \n يا احمد',
                      style: TextStyle(fontSize: 15),
                    )),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Index = 5;
                      setState(() {});
                    },
                    icon: Icon(Icons.notifications)),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Index = 4;
                      setState(() {});
                    },
                    icon: Icon(Icons.settings)),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Theme.of(context).primaryColor,
              child: Text(
                'EducationApp',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Index = 0;
                selectedCategory = null;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  color: Colors.grey,
                  child: Text(
                    'المواد الدراسية',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Index = 1;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  color: Colors.grey,
                  child: Text(
                    'الامتحانات',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Index = 2;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  color: Colors.grey,
                  child: Text(
                    'البث المباشر',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Index = 3;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  color: Colors.grey,
                  child: Text(
                    'التواصل',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ViewsIndex(Index),
    );
  }

  Widget ViewsIndex(int index) {
    if (index == 0) {
      return selectedCategory == null
          ? CategoriesScrean(onCategoryClickCallBack)
          : CategoryDetailsScrean(selectedCategory!);
    } else if (index == 1) {
      return Exam();
    } else if (index == 2) {
      return StreamDetailsScrean();
    } else if (index == 3) {
      return communication();
    } else if (index == 4) {
      return Settings();
    } else if (index == 5) {
      return Notification_Screan();
    }

    return CategoriesScrean(onCategoryClickCallBack);
  }

  Category? selectedCategory = null;

  void onCategoryClickCallBack(Category category) {
    // print(category.title);
    selectedCategory = category;
    setState(() {
      selectedCategory = category;
    });
  }
}
