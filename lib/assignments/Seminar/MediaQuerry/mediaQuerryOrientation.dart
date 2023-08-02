import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MediaQueryOrientationEg(),
    debugShowCheckedModeBanner: false,
  ));
}

class MediaQueryOrientationEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (MediaQuery.of(context).orientation == Orientation.portrait) {
          return portraitView();
        } else {
          return landscapeView();
        }
      }),
    );
  }

  Widget portraitView() {
    return Container(
      color: Colors.yellow[200],
      child: const Center(child: Text('Portrait',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
    );
  }

  Widget landscapeView() {
    return Container(
      color: Colors.blue[200],
      child: const Center(child: Text('Landscape',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
    );
  }
}
