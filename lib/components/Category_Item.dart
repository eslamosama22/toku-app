import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color,this.text,this.OnTap});

  String? text;
  Color? color;
  Function()? OnTap;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 18,),
        alignment: Alignment.centerLeft,
        child: Text(text!,style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),),
        color: color,
        height: 60,
        width:double.infinity,
      ),
    );
  }
}