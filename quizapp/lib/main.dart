import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void printSample() {
    print("Hello Dear Friends");
  }

  @override
  Widget build(BuildContext context) {
    var quizes = [
      'What \'s  your Favourit Color ',
      'What\'s Favourite Place',
      'What\'s Your Hobby'
    ];

    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Text('Question 1'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: printSample,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: printSample,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: printSample,
            )
          ],
        ),
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
