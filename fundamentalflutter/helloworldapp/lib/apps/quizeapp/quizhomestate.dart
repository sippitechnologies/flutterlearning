import 'package:flutter/material.dart';
import 'quizapphome.dart';
import 'quiz.dart';
import 'result.dart';

class QuizHomeState extends State<QuizHome> {
  int counter = 0;
  int result = 0;
  Map<String, int> answerMap;

  var questions = [
    {
      "question": "What's your name",
      "answers": [
        {"title": "Deepak", "total": 10},
        {"title": "Ahmed", "total": 20},
        {"title": "Pardeep", "total": 5}
      ]
    },
    {
      "question": "What's your age",
      "answers": [
        {"title": "10", "total": 10},
        {"title": "20", "total": 20},
        {"title": "30", "total": 5}
      ]
    },
    {
      "question": "What's your city",
      "answers": [
        {"title": "50", "total": 10},
        {"title": "90", "total": 20},
        {"title": "10", "total": 5}
      ]
    },
    {
      "question": "What's your country",
      "answers": [
        {"title": "India", "total": 10},
        {"title": "Germany", "total": 20},
        {"title": "Austriala", "total": 5}
      ]
    },
    {
      "question": "What's your state",
      "answers": [
        {"title": "Delhi", "total": 10},
        {"title": "Punjab", "total": 20},
        {"title": "Haryana", "total": 5}
      ]
    },
    {
      "question": "What's your favourit Pet",
      "answers": [
        {"title": "Rabbit", "total": 10},
        {"title": "Dog", "total": 20},
        {"title": "Sparrow", "total": 5}
      ]
    },
    {
      "question": "What's your favourite color",
      "answers": [
        {"title": "Red", "total": 10},
        {"title": "Green", "total": 20},
        {"title": "Yellow", "total": 5}
      ]
    }
  ];

  void rest() {
    setState(() {
      counter = 0;
      result = 0;
    });
  }

  void updateQuestionAnswer(int score) {
    result += score;
    setState(() {
      counter++;
    });
  }

  void updatResult(int answerTotal) {
    setState(() {
      result += answerTotal;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Quiz App",
      )),
      body: (counter < questions.length)
          ? Quiz(questions[counter]['question'], questions[counter]['answers'],
              updateQuestionAnswer)
          : Result(result, rest),
    );
  }
}
