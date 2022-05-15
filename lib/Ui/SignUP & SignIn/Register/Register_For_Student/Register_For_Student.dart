import 'dart:io';

import 'package:education_app/Ui/SignUP%20&%20SignIn/Login/Login_Screan_for_Student.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Register_For_Student extends StatefulWidget {
  static const String routeName = 'Reg_student';

  @override
  State<Register_For_Student> createState() => _Register_For_StudentState();
}

class _Register_For_StudentState extends State<Register_For_Student> {
  File? image;

  Future pichkImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = await saveImagePermanently(image.path);
    setState(() => this.image = imageTemporary);
  }

  Future<File> saveImagePermanently(String imagepath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagepath);
    final image = File('${directory.path}/$name');
    return File(imagepath).copy(image.path);
  }

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
                      child: image != null
                          ? Image.file(
                              image!,
                              width: 150,
                              height: 140,
                              fit: BoxFit.cover,
                            )
                          : FlutterLogo(
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
                  label: "المرحلة",
                  prefix: Icons.stacked_line_chart,
                  textSize: 18,
                  textColor: Colors.black,
                  border: OutlineInputBorder(),
                ),
                SizedBox(
                  height: 10,
                ),
                defultFormField(
                  label: "الصف",
                  prefix: Icons.stacked_bar_chart,
                  textSize: 18,
                  textColor: Colors.black,
                  border: OutlineInputBorder(),
                ),
                SizedBox(
                  height: 10,
                ),
                defultFormField(
                  label: "رقم هاتف ولي الامر",
                  prefix: Icons.phone,
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
                      navigateTo(context, Login_Screan_for_Student());
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
                  pichkImage(ImageSource.camera);
                },
              ),
              SizedBox(
                width: 10,
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                label: Text("المعرض"),
                onPressed: () {
                  pichkImage(ImageSource.gallery);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
/*
  WidgetRegs('الاسم '),
                WidgetRegs('    المرحلة'),
                WidgetRegs('الصف '),
                WidgetRegs('    رقم هاتف \n ولي الامر '),
                WidgetRegs('    رقم \n الهاتف '),
                WidgetRegs('    رساله \n تأكيد '),
                WidgetRegs('الباسورد '),
 */
