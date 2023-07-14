import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: restaurentSearchUi(),
    debugShowCheckedModeBanner: false,
  ));
}

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
      ],
    ));
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
    return InkWell(
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
