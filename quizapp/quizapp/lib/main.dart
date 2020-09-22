import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}



class MyAppState extends State<MyApp> {

  var _questionIndex=0;
  var _totalscore=0;

  var questions = [{"question":"What\' is your favourite color?",
  "answers":[{"name":"Red","score":10},{"name":"Green","score":5},{"name":"Blue","score":4},{"name":"Yellow","score":6}]},{"question":"What\' is your favourite Animal?",
    "answers":[{"name":"Tiger","score":10},{"name":"Loin","score":7},{"name":"Rabbit","score":7},{"name":"Deer","score":8}]},{"question":"What\' is your favourite Hero?",
    "answers":[{"name":"Dilip Kumar","score":6},{"name":"Raj Kumar","score":10},{"name":"Nana Patakar","score":2}]}];

  void updateQuestion(int score)
  {
     _totalscore+=score;

     setState(() {
       _questionIndex++;
     });


  }
  void reset()
  {
    setState(() {
      _questionIndex=0;
      _totalscore=0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (Text("Quiz App")),
        ),
        body:_questionIndex<questions.length? Column(
          children: [
            Question(title: questions[_questionIndex]["question"]),
          ...((questions[_questionIndex]["answers"] as List<Map<String,Object>>).map((answer) => Answer(answer['name'],()=>updateQuestion(answer['score']))).toList())
         ,
          ],
        ):Result(_totalscore,"Reset",reset),)
    );
  }
}
