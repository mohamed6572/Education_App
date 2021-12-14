import 'package:education_app/Ui/Home/User_Teacher/Statistics/stat_widget.dart';
import 'package:flutter/material.dart';

class exam_result extends StatefulWidget {
  @override
  State<exam_result> createState() => _exam_resultState();
}

class _exam_resultState extends State<exam_result> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stat_widget('مجموعة الساعة'),
                  stat_widget('   الامتحان رقم    '),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stat_widget('الصف'),
                  stat_widget('المرحلة الدراسية'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'الترتيب',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Text(
                    'النتيجة',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'الاسم',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'اعلى درجة',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 30),
                    child: Text(
                      '90%',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      'محمد هشام',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'حفظ \nطباعة',
                style: Theme.of(context).textTheme.headline1,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            ),
          )
        ],
      ),
    ));
  }
}
