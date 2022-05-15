import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:flutter/material.dart';

class communication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Course_Wiget('المرحلة الدراسية'),
            Course_Wiget('         اسم الصف  '),
            Course_Wiget(' مجموعة الساعة'),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                    blurRadius: 1),
              ], borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: TextFormField(
                minLines: 1,
                maxLines: 9,
                decoration: InputDecoration(
                    hintText: '..........نص الرسالة',
                    hintStyle: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'إرسال',
                      style: Theme.of(context).textTheme.headline1?.copyWith(fontFamily: 'Cairo',color: Colors.white),
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
