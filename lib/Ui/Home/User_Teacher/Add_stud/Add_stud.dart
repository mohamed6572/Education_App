import 'package:education_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class Add_stud extends StatelessWidget {
  static const String routeName = 'Add_stud';

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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              defultFormField(
                label: 'الاسم',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: 'المرحلة',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: 'الصف',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: 'رقم هاتف ولي الامر',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: ' رقم الهاتف',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: 'رساله التأكيد ',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultFormField(
                label: 'الباسورد',
                prefix: Icons.person,
                textSize: 18,
                textColor: Colors.black,
                border: OutlineInputBorder(),
              ),
              SizedBox(
                height: 15,
              ),
              defultButton(
                  text: 'اضف', radius: 10, textSize: 20, function: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
