import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final Function updateHandler;

  Answer(this.title, this.updateHandler);

  @override
  Widget build(BuildContext context) {
  return  Container(
      width: double.infinity,
      child: RaisedButton(
          child: (Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),onPressed: updateHandler,color: Colors.blue,),

    );
  }
}
