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
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: GridView.builder(
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
