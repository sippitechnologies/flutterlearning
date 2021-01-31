import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String title;
  Answer(this.handler, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: handler,
        child: Text(title),
      ),
    );
  }
}
