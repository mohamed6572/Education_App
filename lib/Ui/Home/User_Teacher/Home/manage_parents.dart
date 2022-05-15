import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class manage_parents extends StatelessWidget{

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
        title: Text('ولي امر',
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
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 35,
                          height: 35,
                          child: Icon(Icons.phone,color: Colors.white,size: 20,),
                        ),

                        SizedBox(
                          width:8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: defultColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 35,
                          height: 35,
                          child: Icon(Icons.message,color: Colors.white,size: 20,),
                        ),
                        Spacer(),
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
                      'Gro up B',
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: defultColor, fontSize: 16),
                    ),


                    Row(
                      children: [

                        Expanded(
                          flex: 1,
                            child: defultTextButton(
                                text: 'حذف',
                                function: () {},
                                color: Colors.lightBlue.shade300,
                                textColor: Colors.white)),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            flex: 2,

                            child: defultTextButton(
                                text: 'تخصيص رخصة اشتراك',
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
