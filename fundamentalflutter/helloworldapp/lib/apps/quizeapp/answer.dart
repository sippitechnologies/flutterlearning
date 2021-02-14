import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _label;
  final Function _handler;

  Answer(this._label, this._handler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_label),
      onPressed: _handler,
    );
  }
}
