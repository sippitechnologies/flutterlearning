import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  var questions = ['What is your favourite Color?', 'What\'is your Name'];
  List<Map<String, Object>> questionsAnswers = [
    {
      'question': 'What is your favourite color',
      'answers': ['RED', 'GREEN', "BLACK"]
    },
    {
      'question': 'What\'s Your favourite Animal',
      'answers': ['Rabit', 'Lion', "Bear"]
    },
    {
      'question': 'What\'s your favourite Food',
      'answers': ['Rice', 'Roti', "Chiken"]
    }
  ];
  var index = 0;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void changeTitle() {
    setState(() {
      widget.index = widget.index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> listofAnswers =
        widget.questionsAnswers[widget.index]['answers'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (widget.index < widget.questionsAnswers.length)
              ? {
                  Question(widget.questionsAnswers[widget.index]['question']),
                  ...(widget.questionsAnswers[widget.index]['answers']
                          as List<String>)
                      .map((answer) {
                    return Answer(changeTitle, answer);
                  }).toList()
                }
              : Text("Hello Wrold")
        ],
      ),
    );
  }
}
