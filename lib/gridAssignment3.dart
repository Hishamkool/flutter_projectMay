import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridAssignment(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridAssignment extends StatelessWidget {
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
    'Notes'
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
    Icons.note
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
  ];
  var coloursShade = [900, 700, 600, 500, 400, 300, 200, 100, 50, 20, 200];

  var images = [
    'assets/images/gridImages/noun-home-5859914.png',
    'assets/images/gridImages/email.png',
    'assets/images/gridImages/alarm-clock.png',
    "assets/images/gridImages/wallet-filled-money-tool.png",
    'assets/images/gridImages/cloud-storage.png',
    'assets/images/gridImages/book.png',
    'assets/images/gridImages/photo-camera-interface-symbol-for-button.png',
    'assets/images/gridImages/user.png',
    'assets/images/gridImages/printer.png',
    'assets/images/gridImages/phone-call.png',
    'assets/images/gridImages/book.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView with Builder"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 100,
              child: Card(

                shadowColor: Colors.blue,
                color: Diffcolorss[index],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(iconss[index],size: 100),
                      ),
                      Text(data[index]),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: images.length,
        ));
  }
}
