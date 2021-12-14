import 'package:flutter/material.dart';

class Exam_Screan extends StatefulWidget {
  static const String routeName = 'Exam';

  @override
  State<Exam_Screan> createState() => _Exam_ScreanState();
}

class _Exam_ScreanState extends State<Exam_Screan> {
  bool? _checked = false;
  bool? _checked2 = false;
  bool? _checked3 = false;
  bool? _checked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'امتحان على اسم الفاعل',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30),
              textAlign: TextAlign.end,
            ),
            Text(
              'السؤال الاول',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.end,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 7),
                    ],
                  ),
                  width: 80,
                  height: 80,
                  child: Column(
                    children: [
                      Text('30:00'),
                      Text('دقيقة'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'س :- اعرب كلمة (الرحمن)من( بسم الله الرحمن الرحيم)',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    // controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    value: _checked,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked = value;
                      });
                    }),
                Text(
                  '١- مبتدأ ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    // controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    value: _checked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked2 = value;
                      });
                    }),
                Text(
                  '٢- خبر ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    // controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    value: _checked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked3 = value;
                      });
                    }),
                Text(
                  '٣- مفعول به',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    // controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.green,
                    value: _checked4,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked4 = value;
                      });
                    }),
                Text(
                  '٤- فاعل ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "التالي",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
