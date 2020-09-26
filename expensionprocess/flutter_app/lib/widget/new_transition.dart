import 'package:flutter/material.dart';
class TransitionWidget extends StatelessWidget
{

  TextEditingController titleController=new TextEditingController();
  TextEditingController amountController=new TextEditingController();
  Function handler;

  void onDataSubmitted()
  {
   /* final title=titleController.text.toString();
    //final amount =double.parse(amountController.text.toString());
    if(title.isEmpty || amount<=0)
      {
        return ;
      }*/
    handler("Hello",90.0);
  }
  TransitionWidget(this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [TextField(decoration: InputDecoration(labelText: "Enter User Name"),controller: titleController,/*onChanged: (val){
          username=val;
        }*/),
      TextField(decoration: InputDecoration(labelText: "Enter Password"),controller: amountController,keyboardType: TextInputType.number,/*onChanged: (val){
          password=val;
        }*/),FlatButton(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        onPressed:onDataSubmitted,)],crossAxisAlignment: CrossAxisAlignment.end,),padding: EdgeInsets.all(5),margin: EdgeInsets.all(2),);
  }
}