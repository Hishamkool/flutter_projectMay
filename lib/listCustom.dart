import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listCustom(),
  ));
}

class listCustom extends StatelessWidget {
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
    var iconss = [
      'assets/icon/android-logomark.ico',
      'assets/icon/avengers.ico',
      'assets/icon/Benjigarner-Softdimension-Windows.ico',
      'assets/icon/Cornmanthe3rd-Plex-System-games.ico',
      'assets/icon/EXE_29677.ico',
      'assets/icon/marvel-282124.ico'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Custom list example'),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((Context, index) {
          return ListTile(
            // leading: Image(image: AssetImage("assets/images/cat heart.png")),
            leading: Image(image: AssetImage(iconss[index]) ), //Icons cannot be passed as
            title: Text(data[index]),
            // trailing: Icon(iconss[index] ),
          );
        }, childCount: data.length),
      ),
    );
  }
}
