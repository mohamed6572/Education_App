import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_parent.dart';
import 'package:flutter/material.dart';

class Register_For_Father extends StatelessWidget {
  static const String routeName = 'Reg_For_Father';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      helperStyle:  TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2,color: Colors.blue)
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
                      helperStyle:  TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'رسالة التأكيد',
                        helperStyle:  TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(width: 2,color: Colors.blue)
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'الباسورد',
                        helperStyle:  TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 18,
                            color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(width: 2,color: Colors.blue)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, Login_Screan_for_parent.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
