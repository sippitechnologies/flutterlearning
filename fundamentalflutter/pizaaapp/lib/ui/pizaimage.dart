import 'package:flutter/material.dart';

class PizzaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
