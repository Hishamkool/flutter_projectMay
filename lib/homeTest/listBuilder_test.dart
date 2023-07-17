import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listBuilder_test(),
  ));
}

class listBuilder_test extends StatelessWidget {
  var data = ['Anu', 'Shinu', 'Munu', 'Shanu'];
  var coloursss = [900, 200, 500, 200];
  var images = [
    'assets/images/food/apple.png',
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
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Contacts"),
          )),
          ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                      leading: Icon(Icons.account_box_outlined),
                      title: Text("Acct"),
                      subtitle: Text("login"),
                      trailing: Icon(Icons.account_box_outlined),
                    ),
                );
              }),
        ],
      ),
    );
  }
}
