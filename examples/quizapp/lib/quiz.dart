import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questionsAnswers;
  final Function changeQuestion;
  Quiz({this.questionIndex, this.questionsAnswers, this.changeQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (questionIndex < questionsAnswers.length)
            ? {
                Question(questionsAnswers[questionIndex]['question']),
                ...(questionsAnswers[questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(changeQuestion, answer);
                }).toList()
              }
            : Text("Hello Wrold")
      ],
    );
  }
}
