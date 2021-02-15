import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> _answerMap;
  final Function _handler;

  Answer(this._answerMap, this._handler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_answerMap['title']),
      onPressed: () => _handler(_answerMap['total']),
    );
  }
}
