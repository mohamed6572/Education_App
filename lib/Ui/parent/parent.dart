import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Statistics/Mony/absence_widget.dart';
import 'package:education_app/Ui/parent/account.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

import 'WidgetParent.dart';

class parent extends StatelessWidget {
  static const String routeName = 'parent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: defultColor,
  actions: [

    defultIcon(icon: Icons.messenger_outline,
      color: Colors.white,
      size: 25.0),
    SizedBox(
      width: 20,
    ),
    defultIcon(icon: Icons.notifications,
        color: Colors.white,

        size: 25.0),
    SizedBox(
      width: 20,
    ),
    defultIcon(icon: Icons.settings,
        color: Colors.white,

        size: 25.0),
    SizedBox(
      width: 20,
    ),
  ],
),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10,),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.595,
                          child: Text(
                            'Welcome Ahmed',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: defultColor, fontSize: 18),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image(
                              height: 70,
                              width: 70,
                              image: AssetImage('assets/images/teacher.jpg')),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 1),
                      ],
                    ),
                    width: double.infinity,
                    height: 80.0),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                          blurRadius: 1),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'الطالب : محمد هشام',
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 26, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'الغياب والحضور',
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.end,
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              absence_widget('30'),
                              absence_widget('29'),
                              absence_widget('28'),
                              absence_widget('27'),
                              absence_widget('26'),
                              absence_widget('25'),
                              absence_widget('24'),
                              absence_widget('23'),
                              absence_widget('22'),
                              absence_widget('21'),
                              absence_widget('20'),
                              absence_widget('19'),
                              absence_widget('18'),
                              absence_widget('17'),
                              absence_widget('16'),
                              absence_widget('15'),
                              absence_widget('14'),
                              absence_widget('13'),
                              absence_widget('12'),
                              absence_widget('11'),
                              absence_widget('10'),
                              absence_widget('9'),
                              absence_widget('8'),
                              absence_widget('7'),
                              absence_widget('6'),
                              absence_widget('5'),
                              absence_widget('4'),
                              absence_widget('3'),
                              absence_widget('2'),
                              absence_widget('1'),
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Text(
                                  'محمد هشام',
                                  style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' جيد جدا (85%) ',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 25, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ': نتائج الاختبارات ',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Parent_widget('الكيمياء', '85'),
                      Parent_widget('الفيزياء', '85'),
                      Parent_widget('الغة العربيه', '85'),
                      Parent_widget('الفلسفة', '85'),
                      Parent_widget('علم النفس', '85'),
                      Parent_widget('الكيمياء', '85'),
                      Parent_widget('الكيمياء', '85'),
                      Parent_widget('الكيمياء', '85'),
                      Parent_widget('الكيمياء', '85'),
                      Parent_widget('الكيمياء', '85'),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          'محمد هشام',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' الشهر والمذكره ',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: "Cairo", fontSize: 25, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ': المدفوعات ',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                myDivider(),
                SizedBox(height: 10,),
                Text(
                  'للتواصل',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 25,
                      color: Colors.black),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: AssetImage('assets/fac.png'),height: 80,width: 80,),
                    Image(image: AssetImage('assets/wah.png'),height: 45,width: 45,),
                    Image(image: AssetImage('assets/tel.png'),height: 50,width: 50,),
                    Image(image: AssetImage('assets/botim.png'),height: 45,width: 45,),
                  ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
