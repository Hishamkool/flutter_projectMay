import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listBuilder1(),));
}

class listBuilder1 extends StatelessWidget {
  var data = ['Anu', 'Shinu', 'Munu', 'Shanu'];
  var coloursss = [900, 200, 500,];
  var images = [
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List using builder"),),
      body: ListView.builder(
          itemCount: coloursss.length,
          itemBuilder: (context, index) {
            
            return Card(
              child: Container(
                color: Colors.blue[coloursss[index]],
                child: Text(data[index],style: TextStyle(fontSize: 30),),

              ),
            );
          }),
    );
  }


}