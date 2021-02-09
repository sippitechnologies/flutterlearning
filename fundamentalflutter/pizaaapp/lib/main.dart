import 'package:flutter/material.dart';
import 'package:pizaaapp/ui/pizaimage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pizza App",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.amber,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Margata',
                      style: TextStyle(fontSize: 40, color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: Text('Garlic,Pepper,Chilly'),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Mozrilla',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text('Garlic,Pepper'),
                  )
                ],
              ),
              PizzaImage(),
              RaisedButton(
                child: Text('Submit your Order'),
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
            ],
          ),
        ));
  }

  showAlertDialog(BuildContext buildContext) {
    AlertDialog alertDialog = AlertDialog(
      title: Text('Order is Placed'),
      content: Text('Thanks for your Order'),
    );
    showDialog(
        context: buildContext,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
