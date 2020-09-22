import 'package:flutter/material.dart';

class Result extends StatelessWidget
{
  final int _totalScore;
  final String buttonlabel;
  var _resultMessage;
  Function reset;

  Result(this._totalScore,this.buttonlabel,this.reset)
  {
    if(_totalScore>25)
    {
      _resultMessage = "You are Excellent";
    }
    else if(_totalScore>20)
    {
      _resultMessage = "You are Great";
    }
    else {
      _resultMessage="You are bad";
    }
  }
   @override
  Widget build(BuildContext context) {
    return Center(child:Column(children: [
       Text(_resultMessage,style: TextStyle(fontSize: 28,color: Colors.red),),
       RaisedButton(child: Text(buttonlabel),color: Colors.green,onPressed: reset,)
     ],),
     );
  }
}