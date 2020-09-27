import 'package:flutter/material.dart';
class TransitionWidget extends StatefulWidget
{

  Function handler;

  TransitionWidget(this.handler);

  @override
  _TransitionWidgetState createState() => _TransitionWidgetState();
}

class _TransitionWidgetState extends State<TransitionWidget> {
  TextEditingController titleController=new TextEditingController();

  TextEditingController amountController=new TextEditingController();

  void onDataSubmitted()
  {
    final title=titleController.text.toString();
    final amount =double.parse(amountController.text.toString());
    if(title.isEmpty || amount<=0)
      {
        return ;
      }
    widget.handler(title,amount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [TextField(decoration: InputDecoration(labelText: "Enter User Name"),
      controller: titleController,onSubmitted:(context)=> onDataSubmitted(),),
      TextField(decoration: InputDecoration(labelText: "Enter Password"),controller: amountController,keyboardType: TextInputType.number,onSubmitted:(context)=> onDataSubmitted()),FlatButton(child: Text("Submit",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
        onPressed:onDataSubmitted,)],crossAxisAlignment: CrossAxisAlignment.end,),padding: EdgeInsets.all(5),margin: EdgeInsets.all(2),);
  }
}