import 'package:flutter/material.dart';
class TransitionWidget extends StatelessWidget
{

  TextEditingController titleController=new TextEditingController();
  TextEditingController amountController=new TextEditingController();
  Function handler;

  void onDataSubmitted()
  {
    if(titleController.text.isEmpty || double.parse(amountController.text.toString())<=0)
      {
        return ;
      }
    handler(titleController.text,double.parse(amountController.text.toString()));
  }
  TransitionWidget(this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [TextField(decoration: InputDecoration(labelText: "Enter User Name"),controller: titleController,/*onChanged: (val){
          username=val;
        }*/),
      TextField(decoration: InputDecoration(labelText: "Enter Password"),controller: amountController,keyboardType: TextInputType.number,onSubmitted:(_)=>onDataSubmitted(),/*onChanged: (val){
          password=val;
        }*/),FlatButton(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        onPressed:onDataSubmitted,)],crossAxisAlignment: CrossAxisAlignment.end,),padding: EdgeInsets.all(5),margin: EdgeInsets.all(2),);
  }
}