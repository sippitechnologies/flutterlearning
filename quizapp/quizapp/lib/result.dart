import 'package:flutter/material.dart';

class Result extends StatelessWidget
{
  final String msg;
  final String buttonlabel;
  Function reset;

  Result(this.msg,this.buttonlabel,this.reset);
   @override
  Widget build(BuildContext context) {
    return Center(child:Column(children: [
       Text(msg,style: TextStyle(fontSize: 28,color: Colors.red),),
       RaisedButton(child: Text(buttonlabel),color: Colors.green,onPressed: reset,)
     ],),
     );
  }
}