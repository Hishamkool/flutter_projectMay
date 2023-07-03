import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listpage()));
}

class listpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.yellow[100],
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("hisham"),
              subtitle: Text("me"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.green[100],
            child: ListTile(
              leading: Icon(Icons.person),
              subtitle: Text("home"),
              title: Text("Arun"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.redAccent,
            child: ListTile(
              leading: Icon(Icons.person_2),
              title: Text("Shubam",style: TextStyle(color: Colors.white),),
              subtitle: Text("work"),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      ),
    );
  }
}
