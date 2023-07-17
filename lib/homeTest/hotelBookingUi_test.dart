import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homePageHotelBooking(),
    debugShowCheckedModeBanner: false,
  ));
}

class homePageHotelBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test SliverAppBar"),
        backgroundColor: Colors.orange,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton( onPressed: () {  }, icon: Icon(Icons.map)),

            ],
          ),
        ],

      ),
    );
  }
}
