import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _result;
  final Function _restHandler;

  Result(this._result, this._restHandler);

  @override
  Widget build(BuildContext buildContext) {
    return Column(
      children: [
        Text('You result is ${getResult()}'),
        RaisedButton(
          child: Text('Reset Quiz'),
          onPressed: _restHandler,
        )
      ],
    );
  }

  String getResult() {
    String message = " ";
    if (_result < 30) {
      message = "Fail  Marks:$_result";
    } else if (_result < 40) {
      message = "Pass Marks:$_result";
    } else if (_result == 60) {
      message = "First Divison Marks:$_result";
    } else if (_result > 60) {
      message = "Excellent Marks:$_result";
    }
    return message;
  }
}
