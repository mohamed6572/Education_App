import 'package:country_code_picker/country_code_picker.dart';
import 'package:education_app/Ui/Home/User_Student/User_Student.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Register_For_Student/Register_For_Student.dart';
import 'package:flutter/material.dart';

class Login_Screan_for_Student extends StatefulWidget {
  static const String routeName = 'Loginforstude';

  @override
  State<Login_Screan_for_Student> createState() => _Login_Screan_StudentState();
}

class _Login_Screan_StudentState extends State<Login_Screan_for_Student> {
  bool isvisable = true;
  bool? _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Image.asset(
                    'assets/images/loogo.png',
                    height: 250,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'قم بتسجيل الدخول ك طالب الان',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 23, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Row(children: [
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          )),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: TextFormField(
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please Enter Password';
                        }
                        if (text.length < 6) {
                          return 'password should be at least 6 chars';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: ' Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: isvisable
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () =>
                              setState(() => isvisable = !isvisable),
                        ),
                      ),
                      obscureText: isvisable,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
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
                  ),
                  SizedBox(
                    // height: 10,
                    height: MediaQuery.of(context).size.height * 0.18,
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, User_Student.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        )),
                    width: 200,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Register_For_Student.routeName);
                      },
                      child: Text(
                        'تسجيل حساب جديد',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            color: Colors.blue),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
