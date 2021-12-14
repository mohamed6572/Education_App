import 'package:education_app/Ui/For_All/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class For_All_Widget2 extends StatelessWidget {
  String text;
  String text2;
  String imagePath;

  For_All_Widget2({this.text = '', this.text2 = '', this.imagePath = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text2,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.blue,
              border: Border(
                left: BorderSide(color: Colors.black, width: 2),
                right: BorderSide(color: Colors.black, width: 2),
                bottom: BorderSide(color: Colors.black, width: 2),
                top: BorderSide(color: Colors.black, width: 2),
              )),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, test.routeName);
            },
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
