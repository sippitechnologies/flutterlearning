import 'package:flutter/material.dart';

class TripCostHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TripCostHomeState();
}

class _TripCostHomeState extends State<TripCostHome> {
  final _currencies = ['Dollars', "Euro", "Ponds"];
  String currency = 'Dollars';
  String calculatedPrice = "";

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
            controller: consumptioncontroller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Consumption Rate", hintText: "eg 14"),
          ),
          TextField(
            controller: ratecontroller,
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(labelText: "Fule Price", hintText: "eg 14"),
          ),
          DropdownButton(
            value: currency,
            onChanged: (value) {
              setState(() {
                currency = value;
              });
            },
            items: _currencies.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              },
            ).toList(),
          ),
          Text(calculatedPrice),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: calCulate,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Reset'),
                  onPressed: reset,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void calCulate() {
    setState(() {
      double distance = double.parse(distancecontroller.text);
      double price = double.parse(ratecontroller.text);
      double consumptionrate = double.parse(consumptioncontroller.text);
      double result = distance / consumptionrate * price;
      calculatedPrice = '${result.toStringAsFixed(2)} $currency';
    });
  }

  void reset() {
    setState(() {
      distancecontroller.text = "";
      ratecontroller.text = "";
      consumptioncontroller.text = "";
      currency = 'Dollars';
    });
  }
}
