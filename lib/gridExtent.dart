import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridExtent(),
  ));
}

class gridExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('grid using extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        children: List.generate(15, (index) {
          return Card(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hisham'),
              ],
            ),
          );
        }),
      ),
    );
  }
}
