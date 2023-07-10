import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: gridViewCustomBuilder(),));
}

class gridViewCustomBuilder extends StatelessWidget {
  var data = [
    'home',
    'email',
    'alarm',
    'wallet',
    'Backup',
    'Book',
    'Camera',
    'Person',
    'Print',
    'Phone',
    'Notes',
    'music'
  ];

  var iconss = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.note,
    Icons.music_note,
  ];
  var Diffcolorss = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.deepOrangeAccent,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.pink,
    Colors.lightBlueAccent,
    Colors.amberAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), itemBuilder: (context, index) {
          return Card(
            color: Diffcolorss[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(iconss[index],size: 100,),
                Text(data[index]),

              ],
            ),
          );

      },itemCount: iconss.length,),
    );
  }
}