import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmersFreshZone(),
    debugShowCheckedModeBanner: false,
  ));
}

class farmersFreshZone extends StatelessWidget {
  var gridImages = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Colors.green,
            title: Text(
              'Farmers Fresh Zone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            floating: true,
            pinned: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.map)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Kochi'),
              ),
            ],
            bottom: AppBar(
              toolbarHeight: 70,
              backgroundColor: Colors.green,
              title: Container(
                margin: EdgeInsets.only(bottom: 12.0),
                // padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      hintText: 'Search for vegitables and fruits'),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 80,
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Vegitables',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Fruits',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Exoitic Fruits',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            //Corosal slider
            CarouselSlider(
              options: CarouselOptions(
                // height: 400,

                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://s3.india.com/travel/wp-content/uploads/2014/10/Karjat.jpg"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "https://static.toiimg.com/thumb/msid-65656614,width-748,height-499,resizemode=4,imgsize-280972/.jpg"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "https://asean.org/wp-content/uploads/2022/09/Philippines-scaled.jpg"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/hotelRooms/room1.jpg"))),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(2.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconTitle(
                      icone: Icons.alarm,
                      title: '30 min policy',
                    ),
                    IconTitle(
                      icone: Icons.camera_front_outlined,
                      title: 'Traceblity',
                    ),
                    IconTitle(
                      icone: Icons.home_work,
                      title: 'Local Sourrounding',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                'Shop By category:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),

          ]))
        ],
      ),
    );
  }
}

class IconTitle extends StatelessWidget {
  final IconData icone;
  final String title;

  const IconTitle({required this.icone, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(icone),
          Text(title),
        ],
      ),
    );
  }
}
