import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: chgptCategoriesPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class chgptCategoriesPage extends StatelessWidget {
  var cardTitles = [
    'Polititcs',
    'Sports',
    'Science',
    'Technology',
    'Travel',
    'Entertainment',
  ];
  var cardColors = [
    Colors.orange[300],
    Colors.blue[300],
    Colors.pink[300],
    Colors.pinkAccent,
    Colors.indigo[300],
    Colors.blue[600],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Adjust the shadow offset as needed
                  ),
                ],
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              
              child: AspectRatio(
                
                aspectRatio: 1,
                child: Card(
                  shadowColor: Colors.black,
                  // margin: EdgeInsets.all(10.0),
                  color: cardColors[index],
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: 15,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 2,offset: Offset(5, 5) )
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/newsHour/squidGame.jpg'),fit: BoxFit.cover
                            ),
                          ),
                          // child: Image(
                          //   image: AssetImage(
                          //       'assets/images/newsHour/squidGame.jpg'),
                          // ),
                        ),
                      ),
                      Positioned(
                          bottom: 15,
                          left: 15,
                          child: Text(
                            cardTitles[index],
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                    ],
                  ),
                ),
              ),
            ),

          );

        },
        itemCount: 6,
      ),
    );
  }
}
