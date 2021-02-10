import 'package:flutter/material.dart';

class TripCostHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TripCostHomeState();
}

class _TripCostHomeState extends State<TripCostHome> {
  final _currencies = ['Dollars', "Euro", "Ponds"];
  String currency = 'Dollars';

  var distancecontroller = TextEditingController();
  var consumptioncontroller = TextEditingController();
  var ratecontroller = TextEditingController();
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Cost'),
      ),
      body: Column(
        children: [
          TextField(
            controller: distancecontroller,
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(labelText: "Distance", hintText: "eg 14"),
          ),
          TextField(
            controller: distancecontroller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Consumption Rate", hintText: "eg 14"),
          ),
          TextField(
            controller: distancecontroller,
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(labelText: "Fule Price", hintText: "eg 14"),
          )
        ],
      ),
    );
  }
}
