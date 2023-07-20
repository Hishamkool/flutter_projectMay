import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stackEg(),
  ));
}

class stackEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //check alignment
            height: 500,
            width: 700,
            color: Colors.redAccent,
          ),
          Positioned(
            left: 200,
            child: Container(
              height: 200,
              width: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
              left: 200,
              bottom: 300,
              child: Container(
                height: 80,
                width: 90,
                color: Colors.yellow,)
          ),
        ],
      ),
    );
  }
}
