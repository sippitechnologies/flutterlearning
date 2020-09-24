import 'package:flutter/material.dart';
import 'package:flutter_app/Transition.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<Transition>transactions = [

  Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
  Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),
    Transition(id: 't1', title: "New Shoes", amount: 99.9, date: DateTime.now()),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Expense App"),),body:
      Column(children: [Card(child: Text("Chart Panel"),),
        Column(children: transactions.map((e) {
          return Card(child: Row(children: [Container (child: Text("\$${e.amount}",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            padding: EdgeInsets.all(10),decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.purple,style: BorderStyle.solid)),),
            Column(children: [Text(e.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),Text(DateFormat.yMMMd().format(e.date),style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)],crossAxisAlignment:CrossAxisAlignment.start ,)],),);
        }).toList(),)
      ],),),);
  }
}

