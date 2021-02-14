import 'package:flutter/material.dart';
import 'quizapphome.dart';
import 'question.dart';
import 'answer.dart';

class QuizHomeState extends State<QuizHome> {
  int counter = 0;

  var questions = [
    {
      "question": "What's your name",
      "answers": ["Deepak", "Ahmed", "Kuldeep"]
    },
    {
      "question": "What's your age",
      "answers": ["10", "20", "40"]
    },
    {
      "question": "What's your city",
      "answers": ["Delhi", "Moonak", "Patran"]
    },
    {
      "question": "What's your country",
      "answers": ["India", "Germany", "Pakistan"]
    },
    {
      "question": "What's your state",
      "answers": ["Punjab", "Haryana", "Delhi"]
    },
    {
      "question": "What's your name",
      "answers": ["Deepak", "Ahmed", "Kuldeep"]
    },
    {
      "question": "What's your name",
      "answers": ["Deepak", "Ahmed", "Kuldeep"]
    }
  ];

  void updateQuestionAnswer() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Quiz App",
      )),
      body: Column(
        children: [
          Question(questions[counter]['question']),
          ...((questions[counter]['answers'] as List<String>)
              .map((answer) => Answer(answer, updateQuestionAnswer))).toList()
        ],
      ),
    );
  }
}
