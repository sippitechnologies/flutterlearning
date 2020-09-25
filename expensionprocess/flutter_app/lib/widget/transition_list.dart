import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/Transition.dart';

class TransitionList extends StatelessWidget
{
  final List<Transition>transactions;

  TransitionList(this.transactions);

 @override
  Widget build(BuildContext context) {
   return Column(children: transactions.map((e) {
     return Card(child: Row(children: [Container (child: Text("\$${e.amount}",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
       margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
       padding: EdgeInsets.all(10),decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.purple,style: BorderStyle.solid)),),
       Column(children: [Text(e.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),Text(DateFormat.yMMMd().format(e.date),style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)],crossAxisAlignment:CrossAxisAlignment.start ,)],),);
   }).toList(),);
  }
}