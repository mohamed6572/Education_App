import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_app/Ui/For_All/Contact.dart';
import 'package:education_app/Ui/For_All/test.dart';
import 'package:education_app/Ui/SignUP%20&%20SignIn/Register/Chose_Register.dart';
import 'package:education_app/models/StartScreanModel.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class For_All extends StatelessWidget {
  static const String routeName = 'For_All';
  List<SubjectModel> textSubj = [
    SubjectModel(
      text: 'الجغرافيا',
    ),
    SubjectModel(
      text: 'الرياضيات',
    ),
    SubjectModel(
      text: 'التاريخ',
    ),
    SubjectModel(
      text: 'الاحياء',
    ),
    SubjectModel(
      text: 'الكيمياء',
    ),
    SubjectModel(
      text: 'فيزياء',
    ),
    SubjectModel(
      text: 'عربي',
    ),
    SubjectModel(
      text: 'رياضيات',
    ),
    SubjectModel(
      text: 'فرنساوي',
    ),
    SubjectModel(
      text: 'علم نفس',
    ),
  ];

  List<liveModel> live = [
    liveModel(
      imagePath: 'assets/stre.jpeg',
      text2: "مستر سيد مدرس لغة اجنبية بعد ساعة",

      text: 'عرض التفاصيل',
    ),
    liveModel(
      imagePath: 'assets/stre.jpeg',
      text2: " مستر احمد مدرس  لغة عربية جاري الان ",
      text: 'عرض التفاصيل',
    ),
    liveModel(
      imagePath: 'assets/stre.jpeg',
      text2: " مستر احمد مدرس  لغة عربية جاري الان",
      text: 'عرض التفاصيل',
    ),
    liveModel(
      imagePath: 'assets/stre.jpeg',
      text2: " مستر احمد مدرس  لغة عربية جاري الان",
      text: 'عرض التفاصيل',
    ),
    liveModel(
      imagePath: 'assets/stre.jpeg',
      text2: " مستر احمد مدرس لغة عربية جاري الان",
      text: 'عرض التفاصيل',
    ),
  ];

  List<corseModel> corsesList = [
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر عبدالرحمن الحماقي مدرس لغة عربية",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر احمد حبيب مدرس جغرافيا وتاريخ",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر شبل مدرس احياء",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: " مستر اسماعيل حسانين مدرس لغة انجليزية",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر عمرو الشرقاوي مدرس فيزياء ",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر علي حجازي مدرس فيزياء",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: " مستر ايمن الشحات مدرس تاريخ ",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: " مستر اسلام صبح مدرس لغة فرنسيه",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر احمد الشيخ مدرس الكيمياء",
        imagePath: 'assets/images/teacher.jpg'),
    corseModel(
        text: 'عرض التفاصيل',
        text2: "مستر احمد راشد مدرس الكيمياء",
        imagePath: 'assets/images/teacher.jpg'),
  ];
  List<Widget> list = [
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        image: AssetImage('assets/images/add6.png'),
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        image: AssetImage('assets/images/add2.png'),
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        image: AssetImage('assets/images/add3.png'),
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: defultColor,
        actions: [
          Container(
            alignment: Alignment.center,
              width: 100,
              color: Colors.indigo.shade200,
              height: 20,
              child: Center(
                  child: Text(
                'جامعي',
                style: TextStyle(fontFamily: 'Cairo'),
              ))),
          Container(
              alignment: Alignment.center,
              width: 100,
              color: Colors.indigoAccent.shade400,
              height: 20,
              child: Center(
                  child: Text('مدارس', style: TextStyle(fontFamily: 'Cairo')))),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.12,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 7.0, start: 7, end: 7),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: list,
                        options: CarouselOptions(
                          // aspectRatio: 2/ 2,
                          height: 190,
                          initialPage: 0,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          reverse: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 200),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      myDivider(),
                      banner('المواد'),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 45,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                buildSubject(textSubj[index], context),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                            itemCount: textSubj.length),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      myDivider(),
                      banner('الكورسات'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 260.0,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                corseItem(corsesList[index], context),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                            itemCount: corsesList.length),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      myDivider(),
                      banner('البث المباشر'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 230,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                LiveItem(live[index],context),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                            itemCount: live.length),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      blurStyle: BlurStyle.solid,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 6),
                ],
              ),
              child: Container(
                color: defultColor,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      defultTextButton(
                          textColor: Colors.white,
                          text: 'للتواصل معنا',
                          function: () {
                            navigateTo(context, Contact());
                          }),
                      defultTextButton(
                          textColor: Colors.white,
                          text: 'حسابي',
                          function: () {
                            navigateTo(context, Chose_Register());
                          }),
                      defultTextButton(
                          text: 'كورسات مدفوعه',
                          textColor: Colors.white,
                          function: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget LiveItem(liveModel model,context) => Container(
        width: 150,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  model.imagePath,
                  width: 100,
                  height: 100,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.text2,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 15, color: Colors.black),
              ),
            ),
            defultContainer(
                backgraondColor: defultColor,
                color: Colors.white,
                width: 100.0,
                widget: defultTextButton(
                    text: model.text,
                    textColor: Colors.white,
                    textsize: 15,
                    function: () { navigateTo(context, test());

                    }))
          ],
        ),
      );

  Widget corseItem(corseModel model, context) => Container(
        width: 130,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage(model.imagePath),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.text2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 15, color: Colors.black),
              ),
            ),
           Spacer(),
            defultContainer(
                backgraondColor: defultColor,
                color: Colors.white,
                width: 100.0,
                widget: defultTextButton(
                    text: model.text,
                    textColor: Colors.white,
                    textsize: 15,
                    function: () {
                      navigateTo(context, test());
                    }))
          ],
        ),
      );

  Widget buildSubject(SubjectModel model, context) => defultContainer(
      backgraondColor: defultColor,
      color: Colors.white,
      widget: defultTextButton(
          text: model.text,
          textsize: 15.0,
          textColor: Colors.white,
          function: () {
            navigateTo(context, test());
          }));

  Widget banner(text) => Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'عرض الجميع',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 15, color: Colors.black),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 1),
                    bottom: BorderSide(color: Colors.black, width: 1),
                  )),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 15, color: Colors.black),
              ),
            )
          ],
        ),
      );
}
