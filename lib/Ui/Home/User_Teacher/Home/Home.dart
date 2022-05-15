
import 'package:education_app/Ui/Home/User_Teacher/Add_stud/manage_student.dart';
import 'package:education_app/Ui/Home/User_Teacher/Collection/manage_collection.dart';
import 'package:education_app/Ui/Home/User_Teacher/Home/licence.dart';
import 'package:education_app/Ui/Home/User_Teacher/Home/manage_parents.dart';
import 'package:education_app/models/StartScreanModel.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

class Home_Teacher extends StatelessWidget {
  List<HomeModel> homeList = [
    HomeModel(
        text: 'ادارة الطلاب', imagePath: 'assets/images/teacher.jpg',widget: manage_student()),
    HomeModel(
        text: 'ادارة المجموعات', imagePath: 'assets/images/teacher.jpg',widget: manage_collection()),
    HomeModel(
        text: 'ادارة الاباء', imagePath: 'assets/images/teacher.jpg',widget: manage_parents()),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'iLearn',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: defultColor),
                  ),
                  Spacer(),
                  defultIcon(icon: Icons.messenger_outline, size: 25.0),
                  SizedBox(
                    width: 20,
                  ),
                  defultIcon(icon: Icons.notifications, size: 25.0),
                  SizedBox(
                    width: 20,
                  ),
                  defultIcon(icon: Icons.settings, size: 25.0),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              defultFormField(
                label: 'Search here',
                border: OutlineInputBorder(),
                prefix: Icons.search,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              width: MediaQuery.of(context).size.width * 0.595,
                              child: Text(
                                'اهلا بك يا مستر احمد',
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style:
                                    TextStyle(color: defultColor,fontFamily: 'Cairo', fontSize: 18),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 2),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Request your licence',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'Cairo',fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  defultTextButton(
                                    text: 'Licence',
                                    function: () {
                                      navigateTo(context, licence());
                                    },
                                    color: defultColor,
                                    textsize: 14,
                                    textColor: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image(
                            height: 90,
                            width: 90,
                            image: AssetImage('assets/images/teacher.jpg')),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                          blurRadius: 2),
                    ],
                  ),
                  width: double.infinity,
                  height: 100.0),
              SizedBox(
                height: 20,
              ),
              Text(
                'يمكنك الان',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontFamily: 'Cairo'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 130,
                  child: ListView.separated(

                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          BuildHome(homeList[index],context),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                      itemCount: homeList.length),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              myDivider(),
              SizedBox(
                height: 10,
              ),
              Text(
                'الفعاليات القادمة',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headline5?.copyWith(fontFamily: 'Cairo'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Active(
                      text: 'الفعاليات',
                      ishe: false,
                      icon: Icons.folder_rounded,
                      context: context),

                  SizedBox(
                    width: 20,
                  ),
                  Active(text: 'مجموعات', icon: Icons.group, context: context),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 2),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defultIcon(icon: Icons.arrow_drop_down,size: 35.0,color: defultColor),
                    Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لغة انجليزية',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color: defultColor),
                        ),
                        Text(
                          'مجموعه الساعه 3',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color:   Colors.indigoAccent),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Active({required text, required icon, context, ishe=true}) => Row(
        children: [
          Text(
            text,
            textAlign: TextAlign.end,
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: ishe ? defultColor : Colors.grey,fontFamily: 'Cairo'),
          ),
          SizedBox(
            width: 8,
          ),
          defultIcon(
              icon: icon, color: ishe ? defultColor : Colors.grey, size: 25.0)
        ],
      );

  Widget BuildHome(HomeModel model,context) => InkWell(
    onTap: (){
      navigateTo(context,model.widget
      );
    },
    child: Container(
          width: 100,
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Image(
                image: AssetImage(model.imagePath),
                height: 90,
                width: 80,
              ),
              Text(
                model.text,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),
              )
            ],
          ),
        ),
  );
}
