import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listSeperator(),
  debugShowCheckedModeBanner: false,));
}

class listSeperator extends StatelessWidget {
  var data = ['Anu', 'Shinu', 'Munu', 'Shanu', 'jhds', 'dsh', 'hdsg', 'hdgf'];
  var coloursss = [900, 800, 700, 600, 500, 400, 300, 200];
  var numbers = [
    "9751166318",
    "9605522116",
    "8489966318",
    "9751144318",
    "9751166318",
    "9605522116",
    "8489966318",
    "9751144318"
  ];
  var images = [
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.yellow[coloursss[index]],
            child: ListTile(
              leading: Image(
                image: AssetImage(images[index]),
              ),
              title: Text(data[index]),
              subtitle: Text(numbers[index]),
              trailing: Container(
                child: Column(
                  children: [
                    Text("call"),
                    Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            thickness: 0,
            color: Colors.red[coloursss[index]],
          );
        },
      ),
    );
  }
}
