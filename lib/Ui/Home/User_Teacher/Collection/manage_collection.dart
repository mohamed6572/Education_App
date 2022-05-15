import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class manage_collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        mini: true,
        backgroundColor: defultColor,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: defultColor),
        title: Text('المجموعات',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: defultColor)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              defultFormField(
                  label: 'search',
                  border: OutlineInputBorder(),
                  prefix: Icons.search,
                  suffix: Icons.list),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: defultTextButton(
                            text: 'يحتاج تفعيل',
                            textColor: Colors.grey,
                            textsize: 16,
                            function: () {})),
                    Expanded(
                        child: defultTextButton(
                            text: 'مفعل',
                            textColor: Colors.white,
                            color: defultColor,
                            textsize: 16,

                            function: () {})),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Group (A)',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: defultColor, fontSize: 24),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Math',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.lightBlue.shade400, fontSize: 16),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Ass:Mr Mohamed Ahmed',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '50 Students',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(color: defultColor, fontSize: 14),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.group,
                    color: defultColor,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: defultTextButton(
                          text: 'انشطة',
                          function: () {},
                          color: defultColor,
                          textColor: Colors.white)),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                      child: defultTextButton(
                          text: 'المساعدين',
                          function: () {},
                          color: defultColor,
                          textColor: Colors.white)),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                      child: defultTextButton(
                          text: 'الطلاب',
                          function: () {},
                          color: defultColor,
                          textColor: Colors.white)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
