import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridCustom(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridCustom extends StatelessWidget {
  var images = [
    'assets/images/cat heart.png',
    'assets/images/food/apple.png',
    'assets/images/food/cherries.png',
    'assets/images/food/grapes.png',
    'assets/images/food/groceries.png',
    'assets/images/food/orange.png',
    'assets/images/food/strawberry.png',
    'assets/images/food/tomato.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Custom'),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Image(image: AssetImage(images[index])),
            );
          }, childCount: images.length)),
    );
  }
}
