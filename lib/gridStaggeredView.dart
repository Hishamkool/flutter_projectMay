import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGridViewe(),
  ));
}

class StaggeredGridViewe extends StatelessWidget {
  // var images = [
  //   'assets/images/cat heart.png',
  //   'assets/images/food/apple.png',
  //   'assets/images/food/cherries.png',
  //   'assets/images/food/grapes.png',
  //   'assets/images/food/groceries.png',
  //   'assets/images/food/orange.png',
  //   'assets/images/food/strawberry.png',
  //   'assets/images/food/tomato.png'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: [
          StaggeredTile.count(1, 2),
          StaggeredTile.count(1, 3),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(3, 4),
          StaggeredTile.count(4, 1),
          StaggeredTile.count(3, 1),
          StaggeredTile.count(1, 5),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(3, 1),
        ],
        children: [
          childclass(icondataa: Icons.one_k, bgcolor: Colors.yellowAccent),
          childclass(icondataa: Icons.two_k, bgcolor: Colors.green),
          childclass(icondataa: Icons.three_k, bgcolor: Colors.purple),
          childclass(icondataa: Icons.four_k, bgcolor: Colors.red),
          childclass(icondataa: Icons.five_k, bgcolor: Colors.deepOrangeAccent),
          childclass(icondataa: Icons.six_k,bgcolor: Colors.lightBlue),
          childclass(icondataa: Icons.seven_k,bgcolor: Colors.lightGreen),
          childclass(icondataa: Icons.eight_k,bgcolor: Colors.lightGreenAccent),
          childclass(icondataa: Icons.nine_k,bgcolor: Colors.deepPurple),
        ],
      ),
    );
  }
}

class childclass extends StatelessWidget {
  final Color? bgcolor;
  final IconData icondataa;

  // final String Text counter;
  childclass({this.bgcolor, required this.icondataa});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(
        icondataa,
        size: 50,

      ),
    );
  }
}
