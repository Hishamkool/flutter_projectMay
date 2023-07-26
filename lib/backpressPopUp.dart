

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BackPressPopUp(),
  ));
}

class BackPressPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> popupFUnction() async {
      return await showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: Text('Exit app'),
              content: Text('Do you want to exit the app?'),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('nop')),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text('yes'))
              ],
            ),
      ) ??
          false;
    }

    return WillPopScope(
      onWillPop: popupFUnction,
      child: Scaffold(
        appBar: AppBar(
          title: Text('pop up button'),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}

