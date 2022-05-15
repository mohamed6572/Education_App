import 'package:flutter/material.dart';

class OTP extends StatefulWidget{
final String phone;
OTP(this.phone);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
      ),
      body: Column(

        children: [
          Container(
            color: Colors.amber,
            margin: EdgeInsets.only(top: 40),
            child: Center(
              child: Text("verify${widget.phone}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),

        ],
      ),
    );
  }

}
