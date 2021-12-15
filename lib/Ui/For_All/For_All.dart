import 'package:education_app/Ui/For_All/For_All_Widget.dart';
import 'package:education_app/Ui/For_All/For_All_Widget2.dart';
import 'package:education_app/Ui/For_All/For_All_Widget3.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Chose_Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class For_All extends StatelessWidget {
  static const String routeName = 'For_All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Center(
            child: Container(
              padding: EdgeInsets.all(8),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  Text(
                    '.........بحث',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Chose_Register.routeName);
                      },
                      child: Text(
                        'حسابي',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 35,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'كورسات مدفوعه',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/add6.png',
                      height: 150,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/add2.png',
                      height: 150,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/add4.png',
                      height: 150,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/add5.png',
                      height: 150,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/add3.png',
                      height: 150,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/add.png',
                      height: 150,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عرض الجميع',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 3),
                            bottom: BorderSide(color: Colors.black, width: 3),
                          )),
                      child: Text(
                        '  المواد',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    For_All_Widget('الجغرافيا'),
                    For_All_Widget('الرياضيات'),
                    For_All_Widget('التاريخ'),
                    For_All_Widget('الاحياء'),
                    For_All_Widget('الكيمياء'),
                    For_All_Widget('فيزيا'),
                    For_All_Widget('عربي'),
                    For_All_Widget('رياضيات'),
                    For_All_Widget('فرنساوي'),
                    For_All_Widget('علم نفس'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عرض الجميع',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 3),
                            bottom: BorderSide(color: Colors.black, width: 3),
                          )),
                      child: Text(
                        ' الكورسات',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(2),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2:
                            "    مستر عبدالرحمن الحماقي  \n             مدرس لغة عربية   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر شبل  \nمدرس  احياء ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2:
                            " مستر اسماعيل حسانين  \n   مدرس لغة انجليزية    ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2:
                            "    مستر عمرو الشرقاوي  \n         مدرس فيزياء       ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2:
                            "    مستر علي حجازي  \n         مدرس فيزياء       ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر ايمن الشحات  \n       مدرس تاريخ   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر اسلام صبح  \n  مدرس لغة فرنسيه   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر احمد الشيخ  \n     مدرس الكيمياء   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر احمد راشد  \n     مدرس الكيمياء   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر احمد علي  \n    مدرس جغرافيا   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget2(
                        text: 'عرض التفاصيل',
                        text2: "   مستر محمد ذكري  \n    مدرس علم نفس   ",
                        imagePath: 'assets/images/teacher.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عرض الجميع',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 3),
                            bottom: BorderSide(color: Colors.black, width: 3),
                          )),
                      child: Text(
                        ' البث المباشر',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر سيد مدرس \n لغة اجنبية بعد ساعة   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                    For_All_Widget3(
                        text2: " مستر احمد مدرس \n لغة عربية جاري الان   ",
                        imagePath: 'assets/images/teacher.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
