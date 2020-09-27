import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/Transition.dart';

class TransitionList extends StatelessWidget
{
  final List<Transition>transactions;

  TransitionList(this.transactions);

 @override
  Widget build(BuildContext context) {

   return Container(height: 300,
     child: ListView.builder(itemBuilder: (context,index){
       var selectedtranstion= transactions[index];
       return Card(child: Row(children: [Container (child: Text("\$${selectedtranstion.amount.toStringAsFixed(2)}",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
         margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
         padding: EdgeInsets.all(10),decoration: BoxDecoration(border: Border.all(width: 2,color: Theme.of(context).primaryColor,style: BorderStyle.solid)),),
         Column(children: [Text(selectedtranstion.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
           Text(DateFormat.yMMMd().format(selectedtranstion.date),style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)],
           crossAxisAlignment:CrossAxisAlignment.start ,)],),);

     },itemCount: transactions.length),);

  }
}