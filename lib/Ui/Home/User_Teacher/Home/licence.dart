import 'package:education_app/Ui/Home/User_Teacher/Home/licence_stud.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class licence extends StatelessWidget {
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
        title: Text('ترخيص',
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
                Row(
                  children: [
                    Container(
                      child: defultTextButton(
                          padding: 9,
                          text: 'الرخص والحسابات',
                          function: () {

                          },
                          textsize: 14,
                          color: Colors.lightBlue.shade300,
                          textColor: Colors.white),
                    ),
                    Spacer(),
                    Text('طلب رخص الاشتراكات',
                        style: Theme.of(context).textTheme.headline6),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                myDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text('0',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: defultColor)),
                    SizedBox(
                      width: 20,
                    ),
                    Text('عدد الرخص في حسابك',
                        style: Theme.of(context).textTheme.headline6),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                myDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text('0',
                        style: Theme.of(context).textTheme.headline6?.copyWith(color: defultColor)),
                    SizedBox(
                      width: 20,
                    ),
                    Text(' الرخص الغير مستخدمة',
                        style: Theme.of(context).textTheme.headline6),
                    SizedBox(
                      width: 2,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                myDivider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'الدفع لاي ليرن', textAlign : TextAlign.end,style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold,color: defultColor)
                ),
                SizedBox(
                  height: 20,
                ),
                myDivider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'الاجمالي', textAlign : TextAlign.end,style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold,color: defultColor)
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                  Text(
                      'مجموع المدفوع', textAlign : TextAlign.end,style: Theme.of(context).textTheme.headline6
                  ),

                  Text(
                      'مجموع المتبقي', textAlign : TextAlign.end,style: Theme.of(context).textTheme.headline6
                  ),
                ],),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                        '0.0 ج', textAlign : TextAlign.
                        end,style: Theme.of(context).textTheme.headline6
                    ),

                    Text(
                        '0.0 ج', textAlign : TextAlign.end,style: Theme.of(context).textTheme.headline6
                    ),


                  ],),

              ],
            )),
      ),
    );
  }
}
