import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class licence_stud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: defultColor),
        title: Text('تخصيص الرخص للطلاب',
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
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 1,
                  ),
                  Text('المتبقي : 0',

                      style: Theme.of(context).textTheme.headline6?.copyWith(color: defultColor,fontWeight: FontWeight.bold)),


                  Text('الاجمالي : 0',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.headline6?.copyWith(color: defultColor,fontWeight: FontWeight.bold)),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: defultContainer(
                      height: 40,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_drop_down_sharp),

                          Text( 'اختر المجموعة'),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                      radius: 8.0,
                    ),
                  ),  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: defultContainer(
                      height: 40,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_drop_down_sharp),

                          Text( 'اختر الدورة'),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                      radius: 8.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                            text: 'مخصص',
                            textColor: Colors.grey,
                            textsize: 16,
                            function: () {})),
                    Expanded(
                        child: defultTextButton(
                            text: 'غير مخصص',
                            textColor: Colors.white,
                            color: defultColor,
                            textsize: 16,
                            function: () {})),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
              ),
              Text('لا يوجد نتائج',textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,)
            ],
          ),
        ),
      ),
    );
  }
}
