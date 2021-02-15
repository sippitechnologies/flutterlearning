import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final String _question;
  final List<Map<String, Object>> _answers;

  final Function _updateHandler;

  Quiz(this._question, this._answers, this._updateHandler);
  @override
  Widget build(BuildContext buildContext) {
    return Column(
      children: [
        Question(_question),
        ...(_answers.map((answer) => Answer(answer, _updateHandler))).toList()
      ],
    );
  }
}
