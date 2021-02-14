import 'package:flutter/material.dart';
import 'quizapphome.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: QuizHome(),
    );
  }
}
