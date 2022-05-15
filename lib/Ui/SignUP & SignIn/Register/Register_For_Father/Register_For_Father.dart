import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_parent.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_teacher.dart';
import 'package:education_app/shared/components/components.dart';
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
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Stack(
                      children: [
                        ClipOval(
                          child:
                               FlutterLogo(
                            size: 150,
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            right: 20,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (buildContext) => bottomSheet());
                              },
                              child: Icon(
                                Icons.camera_alt,
                                size: 28,
                                color: Colors.teal,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    defultFormField(
                      label: "الاسم",
                      prefix: Icons.person,
                      textSize: 18,
                      textColor: Colors.black,
                      border: OutlineInputBorder(),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    defultFormField(
                      label: "رقم الهاتف",
                      prefix: Icons.phone,
                      textSize: 18,
                      textColor: Colors.black,
                      border: OutlineInputBorder(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defultFormField(
                      label: "رسالة التأكيد",
                      prefix: Icons.message,
                      textSize: 18,
                      textColor: Colors.black,
                      border: OutlineInputBorder(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defultFormField(
                      label: "الباسورد",
                      prefix: Icons.lock,
                      textSize: 18,
                      textColor: Colors.black,
                      border: OutlineInputBorder(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defultButton(
                        text: 'إنشاء حساب',
                        textSize: 18,
                        radius: 20,
                        function: () {
                          navigateTo(context, Login_Screan_for_parent());
                        })
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text('اختر صورة ملفك الشخصي',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 20, color: Colors.black)),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera),
                label: Text("كاميرا"),
                onPressed: () {

                },
              ),
              SizedBox(
                width: 10,
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                label: Text("المعرض"),
                onPressed: () {

                },
              ),
            ],
          )
        ],
      ),
    );
  }

}
