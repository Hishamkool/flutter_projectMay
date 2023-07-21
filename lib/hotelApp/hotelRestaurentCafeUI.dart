import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: restaurentSearchUi(),
    debugShowCheckedModeBanner: false,
  ));
}

final List rooms = [
  {"image": "assets/images/hotelRooms/room1.jpg", "title": "Room 1"},
  {"image": "assets/images/hotelRooms/room2.jpg", "title": "Room 2"},
  {"image": "assets/images/hotelRooms/room3.jpg", "title": "Room 3"},
  {"image": "assets/images/hotelRooms/room4.jpg", "title": "Room 4"},
];

class restaurentSearchUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            backgroundColor: Colors.cyan,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Enter your location..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Calicut, Kerala",
                      border: InputBorder.none,
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: buildCatogeries(),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return sliverListRooms(context, index);
            }, childCount: 100),
          )
        ],
      ),
    );
  }

  Widget buildCatogeries() {
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15.0,
          ),
          Category(
            iconCategory: Icons.hotel,
            titleCategory: 'Hotels',
            bgColourCategory: Colors.redAccent,
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            iconCategory: Icons.restaurant,
            titleCategory: 'Restaurant',
            bgColourCategory: Colors.blue,
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            iconCategory: Icons.local_cafe,
            titleCategory: 'Cafe',
            bgColourCategory: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget sliverListRooms(BuildContext context, int index) {
    var room = rooms[index % rooms.length];
    return Container(
      margin: EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5.0),
              color: Colors.greenAccent,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(room['image']),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.star,
                          color: Colors.grey.shade800,
                          size: 20.0,
                        )),
                    Positioned(
                        right: 8,
                        top: 8,
                        child: Icon(
                          Icons.star_border,
                          color: Colors.white,
                          size: 24.0,
                        )),
                    Positioned(
                        bottom: 20.0,
                        right: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Text('\₹1200'),
                        )),
                  ],
                ),
                Container(
                  // color: Colors.blueAccent,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        room['title'],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Kakkavayal, India'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '(229 reviews)',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData iconCategory;
  final String titleCategory;
  final Color? bgColourCategory;

  const Category(
      {Key? key,
      required this.iconCategory,
      required this.titleCategory,
      this.bgColourCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell( //or use gestureDetector for ontap funtionality
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: bgColourCategory,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.symmetric(vertical: 5.0),
        padding: EdgeInsets.all(10.0),
        width: 150,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconCategory,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              titleCategory,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
