import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listBuilder(),
  ));
}

class listBuilder extends StatelessWidget {
  var data = ['Anu', 'Shinu', 'Munu', 'Shanu'];
  var coloursss = [900, 200, 500, 200];
  var images = [
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List using builder"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.yellow[coloursss[index]],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(child: Text(data[index])),
              ),
            );
          }),
    );
  }
}
