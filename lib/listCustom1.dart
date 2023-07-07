import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listCustom1(),
  ));
}

class listCustom1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = ['Anu', 'Shinu', 'Munu', 'Shanu'];
    var coloursss = [900, 600, 300, 100];
    var numbers = ["9751166318", "9605522116", "8489966318", "9751144318"];
    var images = [
      'assets/images/cat heart.png',
      'assets/images/cat heart.png',
      'assets/images/cat heart.png',
      'assets/images/cat heart.png'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom list example 1'),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate([
          Card(
            child: ListTile(
              leading: Icon(Icons.abc),
              title: Text("Abc"),
              trailing: Icon(Icons.abc_outlined),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.egg),
              title: Text("EFG"),
              trailing: Icon(Icons.e_mobiledata),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.ballot),
              title: Text("HIJ"),
              trailing: Icon(Icons.downhill_skiing),
            ),
          ),
        ]),
      ),
    );
  }
}
