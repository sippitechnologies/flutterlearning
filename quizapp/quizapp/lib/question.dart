import 'package:flutter/material.dart';

class Question extends StatelessWidget
{
  final String title;
   Question({this.title});

   @override
  Widget build(BuildContext context) {
    return Container(child: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 28),),width: double.infinity,margin:EdgeInsets.all(10),);
  }
}