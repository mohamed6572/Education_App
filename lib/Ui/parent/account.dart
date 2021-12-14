import 'package:education_app/MyThemeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountset extends StatefulWidget {
  static const String routeName = 'accountset';

  @override
  State<accountset> createState() => _accountsetState();
}

class _accountsetState extends State<accountset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyThemeData.primaryColorDark,
        centerTitle: true,
        title: Text(
          'اعدادات الحساب',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.blue, fontSize: 25),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Icon(Icons.add),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  'تغير اسم المستخدم',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 2)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'New Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'تغير الباسورد',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 2)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'New Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text('حفظ')),
            )
          ],
        ),
      ),
    );
  }
}
