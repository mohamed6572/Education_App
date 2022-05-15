import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  static const String routeName = 'Add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: defultContainer(widget: Icon(Icons.add),
                    width: 150.0,
                    height: 150.0,
                    radius: 80.0

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Course_Wiget('اسم الاعلان'),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'وصف الاعلان',
                  textAlign: TextAlign.end,
                  style: TextStyle(

                      fontFamily: "Cairo", fontSize: 18, color: Colors.black),
                ),
              ),
              defultFormField(label: 'your message....',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                maxlines: 4,
                minlines: 1

              ),
              SizedBox(
                height: 30,
              ),
              defultButton(text: 'اضف', function: (){},
              textSize: 20,
                radius: 20
              )
            ],
          ),
        ),
      ),
    );
  }
}
