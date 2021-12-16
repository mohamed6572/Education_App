import 'package:education_app/Ui/Exam/Exam_Screan.dart';
import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
              child: Column(
            children: [
              Text(
                'لغة عربية',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 30, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                'الوحدة الاولى ',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                'الدرس اسم الفاعل ',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.alarm,
                      size: 40,
                    ),
                    Text(
                      'الوقت\n١٠ دقائق  ',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.question_answer,
                      size: 40,
                    ),
                    Text(
                      ' عدد الاسئلة  \n     ١٠  اسئلة ',
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    '. ١- اقرأ الاسئلة جيدا ولاتتسرع في الاجابة ',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '. ٢- يمكنك تخطي اي سؤال والعودة له مرة اخرى ',
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ' . ٣- انتبه الى الوقت وحاول ان تنتهي قبل نهاية الوقت ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontFamily: "Cairo", fontSize: 15, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '. ٤- بعد انتهاء الامتحان يمكنك معرفة الاجابة الخاطئة ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Exam_Screan.routeName);
            },
            child: Text(
              'جاهز للامتحان ....ابدأ',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 15, color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
          )
        ]),
      ),
    );
  }
}
