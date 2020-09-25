import 'package:flutter/material.dart';
import 'package:flutter_app/model/Transition.dart';
import 'package:flutter_app/widget/new_transition.dart';
import 'package:flutter_app/widget/transition_list.dart';

class UserTransitions extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {

   return UserTransitionsState();
  }
}

class UserTransitionsState extends State<UserTransitions>
{
  final List<Transition>transactions = [

  ];

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransitionWidget(addTransition),
        TransitionList(transactions)
      ],
    );
  }

  void addTransition(String title,double amount)
  {
    final transition = Transition(id:DateTime.now().toString(),title: title,amount: amount,date: DateTime.now());
    setState(() {
      transactions.add(transition);
    });
  }
}