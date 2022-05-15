import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = 'Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('للتواصل معنا'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'للتواصل معنا على ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage('assets/fac.png'),height: 80,width: 80,),
              Image(image: AssetImage('assets/wah.png'),height: 45,width: 45,),
              Image(image: AssetImage('assets/tel.png'),height: 50,width: 50,),
              Image(image: AssetImage('assets/botim.png'),height: 45,width: 45,),
            ],),
          Text(
            'او يمكنك الاتصال على ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 30,
            ),
          ),
          Text(
            '01014064040',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 30,
            ),
          ),

        ],
      ),
    );
  }
}
