import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _title;
  Question(this._title);
  @override
  Widget build(BuildContext context) {
    return Text(_title);
  }
}
