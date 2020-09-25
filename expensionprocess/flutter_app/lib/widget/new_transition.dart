import 'package:flutter/material.dart';
class TransitionWidget extends StatelessWidget
{

  TextEditingController titleController=new TextEditingController();
  TextEditingController amountController=new TextEditingController();
  Function handler;


  TransitionWidget(this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [TextField(decoration: InputDecoration(labelText: "Enter User Name"),controller: titleController,/*onChanged: (val){
          username=val;
        }*/),
      TextField(decoration: InputDecoration(labelText: "Enter Password"),controller: amountController,/*onChanged: (val){
          password=val;
        }*/),FlatButton(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        onPressed:()=> handler(titleController.text,double.parse(amountController.text.toString())),)],crossAxisAlignment: CrossAxisAlignment.end,),padding: EdgeInsets.all(5),margin: EdgeInsets.all(2),);
  }
}