import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewBuilder(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridviewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Image.asset('assets/images/youtube.png',scale: 1,),
        // leading: Icon(Icons.home),
        title: Text(
          'Youtube',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.left,
        ),

        backgroundColor: Colors.white,
      ),
      // body: Text(''),
    );
  }
}
