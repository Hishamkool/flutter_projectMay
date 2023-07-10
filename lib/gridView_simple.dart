import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listGrid(),
    debugShowCheckedModeBanner: false,
  ));
}

class listGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view with grid"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Card(
            shadowColor: Colors.black12,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Apple"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      'assets/images/food/apple.png',
                    ),
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("cherries"),
                ),
                Image(
                  image: AssetImage(
                    'assets/images/food/cherries.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("item"),
                Image(
                  image: AssetImage(
                    'assets/images/food/apple.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("item"),
                Image(
                  image: AssetImage(
                    'assets/images/food/apple.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("item"),
                Image(
                  image: AssetImage(
                    'assets/images/food/apple.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("item"),
                Image(
                  image: AssetImage(
                    'assets/images/food/apple.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
