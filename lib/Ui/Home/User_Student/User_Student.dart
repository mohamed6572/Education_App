import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Settings/Settings.dart';
import 'package:education_app/Ui/Exam/Exam.dart';
import 'package:education_app/Ui/Home/User_Student/Category_Screan/categoryDetailsScrean.dart';
import 'package:education_app/Ui/Home/User_Student/Notification/Notification.dart';
import 'package:education_app/Ui/Home/User_Student/Stream/StreamDetailsScrean.dart';
import 'package:education_app/Ui/Home/User_Student/account_stud.dart';
import 'package:education_app/Ui/Home/User_Student/communication/communication.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Teacher/Register_For_Teacher.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
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
  late Category category;

  String tex(index){
    if(selectedCategory== null){
     return 'Person';
    }
    else {
     return '${selectedCategory?.title}';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tex(Index)
            ),
        backgroundColor: defultColor,
        actions: [
          InkWell(
            onTap: (){

            },
            child: defultIcon(
                icon: Icons.message, size: 25.0, color: Colors.white),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: (){
              Index = 5;
              setState(() {});
            },
            child: defultIcon(
                icon: Icons.notifications, size: 25.0, color: Colors.white),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: (){
                Index =4;
                setState(() {});
              },
              child: defultIcon(icon: Icons.settings, size: 25.0, color: Colors.white)),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
             
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'EducationApp',
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 25, color: Colors.black),
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
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: defultColor,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text(
                    'المواد الدراسية',
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 18,
                        color: Colors.white),),
                      SizedBox(width: 15,),

                        Icon(Icons.school,size: 40,color: Colors.white),

                      ],
                  ),
                ),
              ),
              SizedBox(height: 9,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 1;
                  selectedCategory = null;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: defultColor,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('الامتحانات'
                    ,
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 18,
                        color: Colors.white),),
                      SizedBox(width: 15,),

                        Icon(Icons.assignment_outlined,size: 40,color: Colors.white),

                      ],
                  ),
                ),
              ),
              SizedBox(height: 9,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 2;
                  selectedCategory = null;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: defultColor,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('البث المباشر'
                    ,
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 18,
                        color: Colors.white),),
                      SizedBox(width: 15,),

                        Icon(Icons.stream,size: 40,color: Colors.white),

                      ],
                  ),
                ),
              ),
              SizedBox(height: 9,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Index = 3;
                  selectedCategory = null;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: defultColor,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('التواصل'
                    ,
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 18,
                        color: Colors.white),),
                      SizedBox(width: 15,),

                        Icon(Icons.insert_comment_rounded,size: 40,color: Colors.white,),

                      ],
                  ),
                ),
              ),


              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/fac.png'),height: 80,width: 80,),
                  Image(image: AssetImage('assets/wah.png'),height: 45,width: 45,),
                  Image(image: AssetImage('assets/tel.png'),height: 50,width: 50,),
                  Image(image: AssetImage('assets/botim.png'),height: 45,width: 45,),
                ],),




              SizedBox(height: 50,),
            ],
          ),
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
