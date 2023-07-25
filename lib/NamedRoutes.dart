import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: currentPageNamedRoutes(),
    debugShowCheckedModeBanner: false,
    routes: {
      'page1': (context) => FirstPage(),
      'page2': (context) => SecondPage(),
    },
  ));
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Body of the second page'),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Body of the first page'),
      ),
    );
  }
}

class currentPageNamedRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'page1'); //use semicolon
                },
                child: Text('Click to go to page 1')),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'page2'); //use semicolon
                },
                child: Text('Click to go to page 2'))
          ],
        ),
      ),
    );
  }
}
