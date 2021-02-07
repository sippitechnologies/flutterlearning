import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "App",
      color: Colors.red,
      home: Container(
        child: Text(
          getGreeting(),
          textDirection: TextDirection.ltr,
        ),
        color: Colors.blue,
      )));

  /* runApp(MaterialApp(
    color: Colors.blue,
    home: Text(getGreeting(), textDirection: TextDirection.ltr),
  ));*/
  /*runApp(Material(
    color: Colors.amber,
    child: Text(
      getGreeting(),
      textDirection: TextDirection.ltr,
    ),
  ));*/
  /*runApp(Center(
    child: Text(
      'This is TextView',
      textDirection: TextDirection.ltr,
    ),
  ));*/
  /*runApp(Text(
    'I am TextView ',
    textDirection: TextDirection.ltr,
  ));*/
}

String getGreeting() {
  var nowTime = DateTime.now();
  final int hour = nowTime.hour;
  final int minute = nowTime.minute;

  var minutes = minute < 10 ? '0+${minute.toString()}' : minute.toString();
  var greetingmessage = "";
  if (hour < 12) {
    greetingmessage = "Good Morning";
  } else if (hour < 12 && hour < 4) {
    greetingmessage = "Good Afternoon";
  } else {
    greetingmessage = "Good Evening";
  }
  return 'Time $hour:$minutes $greetingmessage';
}
