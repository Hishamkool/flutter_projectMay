import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expandedStack(),
  ));
}

class expandedStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          color: Colors.red,
          height: 200,
          child: Text(
            "hellow World",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(50),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('helow'),
            ),
          ),
        )),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(60),
            color: Colors.green,
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('world'),
            )),
          ),
        ),
        Stack(
          children: [
            Container(
              //check alignment
              height: 500,
              width: 200,
              color: Colors.redAccent,
            ),
            Positioned(
              left: 10,
              child: Container(
                height: 200,
                width: 50,
                color: Colors.green,
              ),
            ),
            Positioned(
                left: 10,
                bottom: 300,
                child: Container(
                  height: 80,
                  width: 90,
                  color: Colors.yellow,
                ))
          ],
        ),


      ],
    ));
  }
}
