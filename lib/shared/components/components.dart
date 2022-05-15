import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/material.dart';

Widget defultButton({
  double width = double.infinity,
  Color Background = defultColor,
  Color textColor = Colors.white,
  Color borderColor = Colors.white,
  bool isUpperCase = true,
  double radius = 0.0,
  double? textSize,
  required String text,
  required VoidCallback function,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: function,

        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: textColor, fontSize: textSize,fontFamily: 'Cairo'),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Background,
          border: Border(
            left: BorderSide(color: borderColor, width: 1),
            right: BorderSide(color: borderColor, width: 1),
            bottom: BorderSide(color: borderColor, width: 1),
            top: BorderSide(color: borderColor, width: 1),
          )),
    );

Widget defultFormField({
  TextInputType? type,
  TextEditingController? controller,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  String? Function(String? val)? validator,
  void Function(String val)? onChanged,
  VoidCallback? passwordShow,
  VoidCallback? onTap,
  void Function(String)? onSubmeted,
  InputBorder? border,
  InputBorder? borderenable,
  double? textSize,
  Color? textColor,
  int? maxlines=1,
  int? minlines=1,
}) =>
    TextFormField(
      onTap: onTap,
      onFieldSubmitted: onSubmeted,
      onChanged: onChanged,
      obscureText: isPassword,
      validator: validator,
      keyboardType: type,
      controller: controller,
      maxLines: maxlines,
      minLines: minlines,
      decoration: InputDecoration(

        labelText: label,
        labelStyle: TextStyle(
            fontSize: textSize, color: textColor, fontFamily: "Cairo"),
        prefixIcon: Icon(prefix),
        border: border,
        enabledBorder: borderenable,
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: passwordShow,
              )
            : null,
      ),
    );

//////////////////////////////////////facebook Screan

Widget defultIcon({
  required IconData icon,
  Color? color = Colors.blue,
  size=0.0,
}) =>
    Icon(
      icon,
      size: size,
      color: color,
    );

Widget defultContainer({required widget, double? width,double? height,
  double b1 = 1.0,
  double b2 = 1.0,
  double b3 = 1.0,
  double b4 = 1.0,
  Color color =Colors.black,
  Color backgraondColor= Colors.white ,
  radius =9.0,
}) => Container(
    width: width,
    height: height,

    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgraondColor,
        border: Border(
          left: BorderSide(color: color, width: b1),
          right: BorderSide(color: color, width: b2),
          bottom: BorderSide(color: color, width: b3),
          top: BorderSide(color: color, width: b4),
        )),
    child: widget);

Widget defultTextButton(
        {required String text,
        double textsize = 18,
          Color? textColor = Colors.black,
          Color? color,
          double padding=0,
        required void Function()? function}) =>
    TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(EdgeInsets.all(padding)),
          // minimumSize: MaterialStateProperty.all(Size(5, 5))
        ),
        onPressed: function,

        child: Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: textsize, color: textColor, fontFamily: "Cairo"),
        ));

Widget myDivider({
  padding = 0.0,
  padEnd = 0.0,
  PadStart = 0.0,
}) => Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        padding: EdgeInsetsDirectional.only(
            end: padEnd,
          start: PadStart,
        ),
        width: double.infinity,
        height: 1.0,
        color: Colors.black54,
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateToAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false);
