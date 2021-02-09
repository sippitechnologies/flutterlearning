import 'package:flutter/material.dart';

class PizzaDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(16),
        color: Colors.blue,
        height: 50,
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Text(
              'Magareta',
              style: TextStyle(fontSize: 30, color: Colors.red),
              textDirection: TextDirection.ltr,
            ),
            Expanded(
                child: Text(
              'Pipper,Chilly,Cheese,Peas,Kulfi,Green',
              textDirection: TextDirection.ltr,
            )),
          ],
        )));
  }
}
