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
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Text(
                'الوحدة الاولى ',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              Text(
                'الدرس اسم الفاعل ',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 25),
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.alarm,
                      size: 40,
                    ),
                    Text(
                      'الوقت\n١٠ دقائق  ',
                      style: Theme.of(context).textTheme.headline1,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  ' عدد الاسئلة  \n  ١٠  اسألة ',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '١- اقرأ الاسئلة جيدا ولاتتسرع في الاجابة ',
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '٢- يمكنك تخطي اي سؤال والعودة له مرة اخرى ',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Text(
            '٣- انتبه الى الوقت وحاول ان تنتهي قبل نهاية الوقت ',
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '٤- بعد انتهاء الامتحان يمكنك معرفة الاجابة الخاطئة ',
              style: Theme.of(context).textTheme.headline2,
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
              style: Theme.of(context).textTheme.headline1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
          )
        ]),
      ),
    );
  }
}
