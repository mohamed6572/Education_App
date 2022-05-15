import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class StreamDetailsScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  text: 'اختبر نفسك',
                  function: () {},
                  textSize: 20,
                  Background: Colors.white,
                  textColor: Colors.black),
            ),
            Expanded(
              child: defultButton(

                  text: 'الدروس',

                  function: () {},
                  textSize:  20,
                  textColor: Colors.black),
            ),
            Expanded(
              child: defultButton(
                  Background: Colors.white,
                  text: 'معلومات',
                  function: () {},
                  textSize: 20,
                  textColor: Colors.black),
            ),
          ],
        ),
        Container(
          height:MediaQuery.of(context).size.height*0.4,
          child: Center(
            child: Text(
              'لا يوجد دروس',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
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
    );
  }
}
