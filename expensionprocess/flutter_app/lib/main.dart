import 'package:flutter/material.dart';
import 'package:flutter_app/widget/new_transition.dart';
import 'package:flutter_app/widget/transition_list.dart';

import 'model/Transition.dart';
import 'widget/user_transitions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Expense App", home: MyHomePage(),theme: ThemeData(primarySwatch:Colors.purple,accentColor: Colors.amber),);
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transition> transactions = [];

  void addTransition(String title, double amount) {
    final transition = Transition(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      transactions.add(transition);
    });
  }

  void stratAddTransactions(BuildContext buildContext) {
    showModalBottomSheet(
        context: buildContext,
        builder: (dcontext) {
          return GestureDetector(
            child: TransitionWidget(addTransition),
            onTap: () {},
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => stratAddTransactions(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Text("Chart Panel"),
            ),
            TransitionList(transactions)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.add),
        ),
        onPressed: () => stratAddTransactions(context),
      ),
    );
  }

  void onSubmittedClicked() {}
}
