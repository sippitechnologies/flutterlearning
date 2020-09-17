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

  var questionIndex=0;
  var questions = ["What\' is your favourite color?","What\' is your favourite Animal?","What\' is your favourite Hero?"];

  void updateQuestion()
  {
     setState(() {
       questionIndex++;
     });


  }
  void reset()
  {
    setState(() {
      questionIndex=0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (Text("Quiz App")),
        ),
        body:questionIndex<questions.length? Column(
          children: [
            Question(title: questions[questionIndex]),
            Answer("Answer 1",updateQuestion),
          Answer("Answer 2",updateQuestion),
          Answer("Answer 3",updateQuestion),
            Answer("Answer 4",updateQuestion),
          ],
        ):Result("Game is Done","Reset",reset),)
    );
  }
}
