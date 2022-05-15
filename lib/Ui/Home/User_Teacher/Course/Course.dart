import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  static const String routeName = 'Course';

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      'no Things Yet',
      style: Theme.of(context).textTheme.headline5?.copyWith(decoration: TextDecoration.underline),
    ));



    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.white,
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           SizedBox(
    //             height: 20,
    //           ),
    //           defultContainer(
    //               width: 150.0,
    //               height: 150.0,
    //               widget: Icon(Icons.add),
    //               radius: 80.0),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.stretch,
    //             children: [
    //               SizedBox(
    //                 height: MediaQuery.of(context).size.height * 0.02,
    //               ),
    //               Course_Wiget('      المرحلة '),
    //               Course_Wiget('         الصف   '),
    //               Course_Wiget(' المجموعه'),
    //               Course_Wiget('اسم الوحدة'),
    //               Course_Wiget(' اسم الدرس '),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     Container(
    //                       width: 200,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(18),
    //                           boxShadow: [
    //                             BoxShadow(
    //                                 color: Colors.black,
    //                                 offset: Offset(1, 1),
    //                                 spreadRadius: 0,
    //                                 blurRadius: 1),
    //                           ],
    //                           color: Colors.white),
    //                       child: Padding(
    //                         padding: const EdgeInsets.symmetric(
    //                             vertical: 12.0, horizontal: 10),
    //                         child: SingleChildScrollView(
    //                           scrollDirection: Axis.horizontal,
    //                           child: Text(
    //                             'PDF - URL - Image - word - document',
    //                             style: TextStyle(
    //                                 fontFamily: "Cairo",
    //                                 fontSize: 15,
    //                                 color: Colors.black),
    //                             textAlign: TextAlign.center,
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 50,
    //                     ),
    //                     Text(
    //                       ' إضافة  ',
    //                       style: TextStyle(
    //                           fontFamily: "Cairo",
    //                           fontSize: 18,
    //                           color: Colors.black),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 40,
    //               ),
    //               SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.end,
    //                     children: [
    //                       Padding(
    //                         padding:
    //                             const EdgeInsets.symmetric(horizontal: 20.0),
    //                         child: ElevatedButton(
    //                             style: ButtonStyle(
    //                                 backgroundColor:
    //                                     MaterialStateProperty.all(Colors.red),
    //                                 padding: MaterialStateProperty.all(
    //                                     EdgeInsets.symmetric(
    //                                         horizontal: 60, vertical: 5))),
    //                             onPressed: () {},
    //                             child: Text(
    //                               'حذف',
    //                               style: TextStyle(
    //                                   fontFamily: "Cairo",
    //                                   fontSize: 18,
    //                                   color: Colors.black),
    //                             )),
    //                       ),
    //                       Padding(
    //                         padding:
    //                             const EdgeInsets.symmetric(horizontal: 20.0),
    //                         child: ElevatedButton(
    //                             style: ButtonStyle(
    //                                 backgroundColor:
    //                                     MaterialStateProperty.all(defultColor),
    //                                 padding: MaterialStateProperty.all(
    //                                     EdgeInsets.symmetric(
    //                                         horizontal: 60, vertical: 5))),
    //                             onPressed: () {},
    //                             child: Text(
    //                               'حفظ',
    //                               style: TextStyle(
    //                                   fontFamily: "Cairo",
    //                                   fontSize: 18,
    //                                   color: Colors.white),
    //                             )),
    //                       ),
    //                     ]),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //                 child: ElevatedButton(
    //                     style: ButtonStyle(
    //                         backgroundColor:
    //                             MaterialStateProperty.all(defultColor),
    //                         padding: MaterialStateProperty.all(
    //                             EdgeInsets.symmetric(
    //                                 horizontal: 60, vertical: 5))),
    //                     onPressed: () {},
    //                     child: Text(
    //                       'معاينة',
    //                       style: TextStyle(
    //                           fontFamily: "Cairo",
    //                           fontSize: 18,
    //                           color: Colors.white),
    //                     )),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
