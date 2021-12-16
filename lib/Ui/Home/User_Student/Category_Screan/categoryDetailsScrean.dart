import 'package:education_app/Ui/Home/User_Student/Category_Screan/Item_Category.dart';
import 'package:flutter/material.dart';

class CategoryDetailsScrean extends StatelessWidget {
  Category category;

  CategoryDetailsScrean(this.category);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'الوحدة الاولى : اسم الفاعل',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 80,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  top: BorderSide(color: Colors.black, width: 3),
                  left: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                )),
            child: Text(
              'الشرح',
              style: TextStyle(
                  fontFamily: "Cairo", fontSize: 18, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    bottom: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 2),
                  )),
              child: Icon(
                Icons.play_circle_outline,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'ابدأ الاختبار',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 18, color: Colors.black),
              ),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'التعليقات',
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 18, color: Colors.black),
              ),
              Image.asset(
                'assets/images/comment.jpg',
                width: 100,
                height: 50,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: '   اكتب تعليقك',
                  suffixIcon: Icon(Icons.arrow_drop_down)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}
