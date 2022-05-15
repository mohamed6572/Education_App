import 'package:education_app/Ui/Home/User_Student/account_stud.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Item_Category.dart';

class CategoriesScrean extends StatelessWidget {
  Function onCategoryClickCallBack;

  CategoriesScrean(this.onCategoryClickCallBack);

  List<Category> categories = [
    Category(
        title: 'احياء',
        imagePath: 'assets/subjects/bio_ic.png',
        Background: Color.fromRGBO(28, 91, 201, 1.0)),
    Category(
        title: 'لغة عربية',
        imagePath: 'assets/subjects/download.png',
        Background: Color.fromRGBO(0, 62, 144, 1.0)),
    Category(
        title: 'كيمياء',
        imagePath: 'assets/subjects/chem_ic.png',
        Background: Color.fromRGBO(30, 237, 189, 1.0)),
    Category(
        title: 'فيزياء ',
        imagePath: 'assets/subjects/phy_ic.png',
        Background: Color.fromRGBO(72, 207, 144, 1.0)),
    Category(
        title: 'تاريخ',
        imagePath: 'assets/subjects/his.jpg',
        Background: Color.fromRGBO(72, 130, 207, 1.0)),
    Category(
        title: 'جغرافيا',
        imagePath: 'assets/subjects/geo_ic.png',
        Background: Color.fromRGBO(82, 242, 237, 1.0)),
    Category(
        title: 'رياضيات',
        imagePath: 'assets/subjects/math.jpg',
        Background: Color.fromRGBO(82, 242, 127, 1.0)),
    Category(
        title: 'فلسفة',
        imagePath: 'assets/subjects/ph.jpg',
        Background: Color.fromRGBO(82, 242, 154, 1.0)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
        top: 10,
        end: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.595,
                          child: Text(
                            'اهلا بك يا احمد',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: defultColor, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),

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
                      blurRadius: 1),
                ],
              ),
              width: double.infinity,
              height: 100.0),
          SizedBox(
            height: 10,
          ),
          Text(
            'المواد الدراسية',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
                itemBuilder: (buildContext, index) {
                  return CategoryGridWidget(categories[index], index, (category) {
                    onCategoryClickCallBack(category);
                  });
                },
                itemCount: categories.length,
              )),
        ],
      ),
    );
  }
}
