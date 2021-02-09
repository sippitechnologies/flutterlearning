import 'package:flutter/material.dart';

class HelloAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloAppHomeState();
}

class _HelloAppHomeState extends State<HelloAppHome> {
  var label = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World App'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (String string) {
              setState(() {
                label = string;
              });
            },
          ),
          Text('Hello $label')
        ],
      ),
    );
  }
}
