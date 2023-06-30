import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp1());
}

class myApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage1(),
    );
  }
}

class MyHomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CATIFY",
          style: TextStyle(fontFamily: 'Satisfy-Regular.ttf'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(" Catify",
                  style: GoogleFonts.sacramento(
                      textStyle: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                      // foreground: Paint()
                      //   ..shader = ui.Gradient.linear(
                      //     const Offset(0, 20),
                      //     const Offset(150, 20),
                      //     <Color>[
                      //       Colors.red,
                      //       Colors.green,
                      //     ],
                      //   )
                  )
                  // style: TextStyle(
                  //     color: Colors.greenAccent,
                  //     fontWeight: FontWeight.bold,
                  //     fontStyle: FontStyle.italic,
                  //     fontSize: 35
                  //
                  // ),
                  ),
            ),
            // Icon(
            //   Icons.person,
            //   size: 50,
            //   color: Colors.blue,
            // ),
            Column(
              children: [
                Image(
                  image: AssetImage("assets/images/cat heart.png"),
                ),
                // Image(
                //     height: 310,
                //     image: NetworkImage(
                //       "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&w=600",
                //     )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
