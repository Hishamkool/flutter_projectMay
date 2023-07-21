import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expantionTileEg(),
    debugShowCheckedModeBanner: false,
  ));
}

class expantionTileEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Colors'),
            leading: Icon(
              Icons.color_lens,
              color: Colors.red,
            ),
            trailing: Icon(Icons.arrow_drop_down),
            subtitle: Text('click to expand'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('red'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('green'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('blue'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text('yellow'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
                title: Text('purple'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                ),
                title: Text('indigo'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Colors'),
            leading: Icon(
              Icons.color_lens,
              color: Colors.red,
            ),
            trailing: Icon(Icons.arrow_drop_down),
            subtitle: Text('click to expand'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('red'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('green'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('blue'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text('yellow'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
                title: Text('purple'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                ),
                title: Text('indigo'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Colors'),
            leading: Icon(
              Icons.color_lens,
              color: Colors.red,
            ),
            trailing: Icon(Icons.arrow_drop_down),
            subtitle: Text('click to expand'),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('red'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('green'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('blue'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text('yellow'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
                title: Text('purple'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                ),
                title: Text('indigo'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
