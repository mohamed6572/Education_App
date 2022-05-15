import 'package:country_code_picker/country_code_picker.dart';
import 'package:education_app/Ui/Home/User_Teacher/User_Teacher.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Teacher/Register_For_Teacher.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class Login_Screan_for_teacher extends StatefulWidget {
  static const String routeName = 'Loginforteach';

  @override
  State<Login_Screan_for_teacher> createState() => _Login_Screan_teacherState();
}

class _Login_Screan_teacherState extends State<Login_Screan_for_teacher> {
  bool isvisable = true;
  bool? _checked = false;
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Image.asset(
                    'assets/app_logo.jpeg',
                    height: 190,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'قم بتسجيل الدخول ك معلم الان',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 23, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: CountryCodePicker(
                        showFlagMain: true,
                        initialSelection: 'EG',
                        showCountryOnly: true,
                        alignLeft: true,
                        favorite: ['EG'],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child:
                      defultFormField(
                        type: TextInputType.visiblePassword,
                        controller: phoneController,
                        label: '+00000000',
                        border: OutlineInputBorder(),
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please Enter phone number';
                          }
                          return null;
                        },
                      ),

                    )
                  ]),
                  SizedBox(height: 20,),
                  defultFormField(
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    label: ' Password',
                    isPassword: true,
                    suffix: Icons.visibility,
                    prefix: Icons.lock,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'Please Enter Password';
                      }
                      if (text.length < 6) {
                        return 'password should be at least 6 chars';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'تذكرني لاحقا',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Checkbox(
                              value: _checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _checked = value;
                                });
                              }),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'هل نسيت الرقم السري؟',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  defultButton(
                    borderColor: Colors.lightBlue,
                    radius: 30,
                    text: 'تسجيل الدخول',
                    textSize: 17,
                    isUpperCase: true,
                    function: (){
                      navigateTo(context, User_Teacher());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  defultButton(
                    textColor: Colors.blue,
                    borderColor: Colors.blue,
                    radius: 30,
                    Background: Colors.white,
                    text: 'تسجيل حساب جديد',
                    textSize: 17,
                    isUpperCase: true,
                    function: (){
                      navigateTo(context, Register_For_Teacher());
                    },
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
