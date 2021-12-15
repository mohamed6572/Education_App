import 'package:education_app/MyThemeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class account_tech extends StatefulWidget {
  static const String routeName = 'accountset_tech';

  @override
  State<account_tech> createState() => _accountset_techState();
}

class _accountset_techState extends State<account_tech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyThemeData.primaryColorDark,
        centerTitle: true,
        title: Text(
          'اعدادات الحساب',
          style:
              TextStyle(fontFamily: "Cairo", fontSize: 25, color: Colors.blue),
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
                color: Colors.blue,
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
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 18, color: Colors.black),
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
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 18, color: Colors.black),
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
