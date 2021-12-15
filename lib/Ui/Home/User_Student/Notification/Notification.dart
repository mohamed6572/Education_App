import 'package:flutter/material.dart';

class Notification_Screan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border(
                top: BorderSide(color: Colors.black, width: 2),
                left: BorderSide(color: Colors.black, width: 2),
                bottom: BorderSide(color: Colors.black, width: 2),
                right: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'البث المباشر \n  شرح اسم الفاعل ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ClipRRect(
                          child: Container(
                            child: Image.asset(
                              'assets/images/teacher.jpg',
                              height: 70,
                              width: 70,
                            ),
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5:00 pm',
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                  right: BorderSide(color: Colors.black, width: 2),
                )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'مادة الكيمياء \n  تم اضافة درس جديد ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ClipRRect(
                          child: Container(
                            child: Image.asset(
                              'assets/subjects/chem_ic.png',
                              height: 70,
                              width: 70,
                            ),
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7:00 pm',
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                  right: BorderSide(color: Colors.black, width: 2),
                )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'مادة العربي \n  تم اضافة امتحان ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ClipRRect(
                          child: Container(
                            child: Image.asset(
                              'assets/subjects/daad_ic.png',
                              height: 70,
                              width: 70,
                            ),
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3:00 pm',
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
