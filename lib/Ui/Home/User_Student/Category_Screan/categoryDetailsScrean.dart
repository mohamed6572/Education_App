import 'package:education_app/Ui/Exam/Exam_Screan.dart';
import 'package:education_app/Ui/Home/User_Student/Category_Screan/Item_Category.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class CategoryDetailsScrean extends StatelessWidget {
  Category category;

  CategoryDetailsScrean(this.category);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Image(
                  image: AssetImage('assets/onboarding/st.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: defultButton(
                        text: 'الاختبارات',
                        function: () {},
                        textSize: 20,
                        Background: Colors.white,
                        textColor: Colors.black),
                  ),
                  Expanded(
                    child: defultButton(
                        text: 'الدروس',
                        function: () {},
                        textSize: 20,
                        Background: Colors.white,
                        textColor: Colors.black),
                  ),
                  Expanded(
                    child: defultButton(
                        text: 'معلومات',
                        function: () {},
                        textSize: 20,
                        textColor: Colors.black),
                  ),
                ],
              ),
              Container(
                height: 110,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 90,
                      child: Text(
                        'م ناصر احمد ماجستير علوم ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(
                          height: 70,
                          width: 70,
                          image: AssetImage('assets/images/teacher.jpg')),
                    ),
                  ],
                ),
              ),

              details(
                text1: "جامعة القاهرة",
                text2: "0.0",
                icon1: Icons.gradient_outlined,
                icon2: Icons.grade_outlined,
              ),
              details(
                text1: "0 محاضرة",
                text2: "150 جنية",
                icon1: Icons.ondemand_video_outlined,
                icon2: Icons.monetization_on,
              ),

              details(
                text1: "رابط التليجرام",
                text2: "مشاركة",
                icon2: Icons.share,
                icon1: Icons.near_me_sharp,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'بعض المعلومات ',
                style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'التعليقات',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Image.asset(
                    'assets/images/comment.jpg',
                    width: 90,
                    height: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '   اكتب تعليقك',
                      suffixIcon: Icon(Icons.arrow_drop_down)),
                ),
              ),
            ]),
          ),
        ),
        Container(
          height: 60,
          color: defultColor,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 15, end: 15),
            child: Row(
              children: [
                defultButton(
                    width: 120,
                    Background: Colors.green,
                    borderColor: Colors.green,
                    textSize: 20,
                    text: 'اشترك الان',
                    function: () {}),
                Spacer(),
                Text(
                  "300 ج",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('150 ج ', style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget details({
    text1,
    icon1,
    text2,
    icon2,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(text2),
                Icon(icon2),
              ],
            ),
            Row(
              children: [Text(text1), Icon(icon1)],
            ),
          ],
        ),
      );
}
