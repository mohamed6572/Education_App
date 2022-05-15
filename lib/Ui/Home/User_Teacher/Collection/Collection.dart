import 'package:education_app/MyThemeData.dart';
import 'package:education_app/Ui/Home/User_Teacher/Course/widget_Course.dart';
import 'package:education_app/models/StartScreanModel.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  static const String routeName = 'Collection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                defultFormField(
                    label: 'اسم الجروب', border: OutlineInputBorder()),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'اختر التاريخ والوقت',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) => historyItem(
                          model: historyList[index], context: context),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 9,
                          ),
                      itemCount: historyList.length),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 160,
                        child: defultFormField(label: '', border: OutlineInputBorder(), prefix: Icons.watch_later_outlined)),
                    SizedBox(
                      width: 10,
                    ),
                    Text('من',style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 160,
                        child: defultFormField(label: '', border: OutlineInputBorder(), prefix: Icons.watch_later_outlined)),
                    SizedBox(
                      width: 10,
                    ),
                    Text('الى',style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                myDivider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    defultContainer(
                      width:35,
                      height: 50,
                      radius: 0.0,

                      widget:
                      Center(child: Text('+',style: Theme.of(context).textTheme.headline2)),



                    ),
                    defultContainer(
                        width:60,
                      height: 50,
                      radius: 0.0,

                      widget:
                    Center(child: Text('50',style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold,color: defultColor))),



                    ),
                    defultContainer(
                      width:35,
                      height: 50,
                      radius: 0.0,

                      widget:
                      Center(child: Text(

                          '-',

                          style: Theme.of(context).textTheme.headline2)),



                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                        'اقصى عدد للطلاب',style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: 9,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                myDivider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text('اضافة',style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: defultColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: defultIcon(icon: Icons.add,color: Colors.white,size: 20.0))
                      ],
                    ),
                    Spacer(),
                    Text('تخصيص مساعد',style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: 9,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                myDivider(),

                SizedBox(
                  height: 15,
                ),
                Course_Wiget('      المرحلة '),
                Course_Wiget('         الصف   '),
                Course_Wiget(' المجموعه'),
                Course_Wiget('اسم المادة '),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    defultButton(
                        text: 'حذف',
                        function: () {},
                        width: 120.0,
                        Background: Colors.red,
                        radius: 20),
                    defultButton(
                        text: 'حفظ',
                        function: () {},
                        width: 120.0,
                        Background: Colors.green,
                        radius: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<SubjectModel> historyList = [
    SubjectModel(text: 'سبت'),
    SubjectModel(text: 'احد'),
    SubjectModel(text: 'اثنين'),
    SubjectModel(text: 'ثلا'),
    SubjectModel(text: 'اربع'),
    SubjectModel(text: 'خميس'),
    SubjectModel(text: 'جمعه'),
  ];

  Widget historyItem({context, required SubjectModel model}) => defultContainer(
      widget: Center(
          child: Text(
        model.text,
        style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      )),
      width: 75,
      height: 75);
}
