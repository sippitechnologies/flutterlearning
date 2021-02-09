import 'package:flutter/material.dart';

class PizzaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: getImage(context),
    );
  }

  Image getImage(BuildContext buildContext) {
    AssetImage assetImage = AssetImage('images/pizza.png');
    return Image(
      image: assetImage,
    );
  }
}
