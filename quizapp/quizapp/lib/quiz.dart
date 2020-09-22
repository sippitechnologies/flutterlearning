import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/result.dart';
class Quiz extends StatelessWidget
{
   final List<Map<String,Object>> _questions;
   final _questionIndex;
   Function updateQuestion;


   Quiz(this._questions,this._questionIndex,this.updateQuestion);
  @override
  Widget build(BuildContext context)
  {
   return Column(
      children: [
        Question(title: _questions[_questionIndex]["question"]),
        ...((_questions[_questionIndex]["answers"] as List<Map<String,Object>>).map((answer) => Answer(answer['name'],()=>updateQuestion)).toList())
        ,
      ],
    );
  }

}