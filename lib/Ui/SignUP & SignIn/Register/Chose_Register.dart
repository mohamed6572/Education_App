import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_Student.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_parent.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_teacher.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/ChoseRegister_Widget.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Father/Register_For_Father.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chose_Register extends StatelessWidget {
  static const String routeName = 'chose';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Image.asset(
                'assets/images/loogo.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Login_Screan_for_parent.routeName);
                      },
                      child: ChoseRegister_Widget(
                          'ولي الامر', 'assets/images/fath_logo.jpg')),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Login_Screan_for_Student.routeName);
                      },
                      child: ChoseRegister_Widget(
                          'طالب', 'assets/images/stud.jpg')),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Login_Screan_for_teacher.routeName);
                      },
                      child: ChoseRegister_Widget(
                          'معلم', 'assets/images/teacher.jpg')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
