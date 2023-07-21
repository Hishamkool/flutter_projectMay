import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmersFreshZone(),
    debugShowCheckedModeBanner: false,
  ));
}

class farmersFreshZone extends StatefulWidget {
  @override
  State<farmersFreshZone> createState() => _farmersFreshZoneState();
}

class _farmersFreshZoneState extends State<farmersFreshZone> {
  var currentSelected = 0;

  var gridImages = [
    "assets/images/FarmersFreshZone/vegitables/beetroot.jpg",
    "assets/images/FarmersFreshZone/Exotic/passionfruit.jpg",
    "assets/images/FarmersFreshZone/Exotic/carambola.jpg",
    "assets/images/FarmersFreshZone/vegitables/broccoli.jpg",
    "assets/images/FarmersFreshZone/Exotic/papaya.jpg",
    "assets/images/FarmersFreshZone/Exotic/lychee.jpg",
  ];

  var gridTitles = [
    'vegitables',
    'fruits',
    'exotic',
    'vegitables',
    'fruits',
    'exotic',
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
                padding: const EdgeInsets.only(top: 21.0, right: 10),
                child: Text(
                  'Kochi',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
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
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm1.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm2.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm3.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm4.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm5.jpg"))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/FarmersFreshZone/farms/farm7.jpg"))),
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
              SizedBox(
                height: 15,
              ),
            ]),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 1,

              // childAspectRatio: 1.1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    AspectRatio(
                      
                      aspectRatio: 4/3,
                      child: Container(
                        // height: 100,
                        // width: 120,
                        // height: MediaQuery.of(context).size.height * 0.2,
                        // width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(gridImages[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 20),
                          ],
                        ),
                        // child: Text(gridTitles[index]),
                        // child: Column(
                        //
                        //   children: [
                        //     Image(image: NetworkImage(gridImages[index])),
                        //     Text(gridTitles[index]),
                        //   ],
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(gridTitles[index]),
                  ],
                );
              },
              childCount: gridImages.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.green[100],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        currentIndex: currentSelected,
        onTap: onTapBottom,
      ),
    );
  }

  void onTapBottom(int index) {
    setState(() {
      currentSelected = index;
    });
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
