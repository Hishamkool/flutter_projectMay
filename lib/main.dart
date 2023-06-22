import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyappHome(),));
}

class MyappHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hisham"),
      ),
      body: Container(child: Text("My app flutter"),),
    );
  }
}
