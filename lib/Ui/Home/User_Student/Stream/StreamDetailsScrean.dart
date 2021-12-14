import 'package:flutter/material.dart';

class StreamDetailsScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 100,
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
              height: 50,
            ),
            Text(
              'يبدأ البث المباشر بعد ساعه',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'التعليقات',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Image.asset(
                  'assets/images/comment.jpg',
                  width: 100,
                  height: 50,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '   اكتب تعليقك',
                    suffixIcon: Icon(Icons.arrow_drop_down)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
