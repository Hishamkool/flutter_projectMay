import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: flexibleExample(),debugShowCheckedModeBanner: false,));

}
class flexibleExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                height: 100,
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.green),
              ),
            ),
            SizedBox(
              // height: 20,
              width: 20,
            ),
            Flexible(
              flex: 7,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
