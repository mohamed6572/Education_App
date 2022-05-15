import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class manage_student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: true,
        backgroundColor: defultColor,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: defultColor),
        title: Text('الطلاب',
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
                            function: () {})),
                    Expanded(
                        child: defultTextButton(
                            text: 'تعليق',
                            textColor: Colors.grey,
                            function: () {})),
                    Expanded(
                        child: defultTextButton(
                            text: 'مفعل',
                            textColor: Colors.white,
                            color: defultColor,
                            function: () {})),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text(
                    'الكل',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(color: Colors.grey, fontSize: 14),
                  ),
                  Icon (Icons.check_box_outline_blank),
                ],
              ),
              SizedBox(
                height: 25,
              ),

             Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(8),
                 boxShadow: [
                   BoxShadow(
                       color: Colors.grey,
                       offset: Offset(0, 1),
                       spreadRadius: 0,
                       blurRadius: 6),
                 ],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                        Text(
                          'Mohamed Ahmed',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color: Colors.indigoAccent, fontSize: 24),
                        ),
                       Icon (Icons.check_box_outline_blank),
                     ],
                   ),

                    Text(
                      'Math',
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.blue, fontSize: 16),
                    ),

                    Text(
                      'Group (A)',
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: defultColor, fontSize: 16),
                    ),


                    Row(
                      children: [
                        Expanded(
                            child: defultTextButton(
                                text: 'حظر',
                                function: () {},
                                color: Colors.lightBlue.shade300,
                                textColor: Colors.white)),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: defultTextButton(
                                text: 'حذف',
                                function: () {},
                                color: Colors.lightBlue.shade300,
                                textColor: Colors.white)),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: defultTextButton(
                                text: 'تعليق',
                                function: () {},
                                color: Colors.lightBlue.shade300,
                                textColor: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    myDivider(),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '20 L.E',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: Colors.redAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'المتبقي',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: defultColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              '50 L.E',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.headline2?.copyWith(
                                  color: Colors.redAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'المدفوع',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: defultColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ترخيص',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: Colors.indigoAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
