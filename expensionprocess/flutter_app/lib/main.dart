import 'package:flutter/material.dart';
import 'package:flutter_app/widget/new_transition.dart';
import 'package:flutter_app/widget/transition_list.dart';

import 'widget/user_transitions.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense App"),
        ),
        body: Column(
          children: [
            Card(
              child: Text("Chart Panel"),
            ),
            UserTransitions()
          ],
        ),
      ),
    );
  }

  void onSubmittedClicked() {}
}
