import 'package:flutter/material.dart';
import 'hellohome.dart';

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: HelloAppHome(),
    );
  }
}
