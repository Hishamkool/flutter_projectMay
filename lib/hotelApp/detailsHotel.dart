import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: detailsPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class detailsPage extends StatefulWidget {
  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  int currentSelected = 0;

  void onCLickBottomItem(int index) {
    setState(() {
      currentSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: null,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: currentSelected,
        onTap: onCLickBottomItem,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/hotelRooms/room1.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 10, // Adjust the left value as needed
                    child: Text(
                      'Crown Plaza ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 50,
                    child: Text(
                      'Ernakulam, India',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Text(
                          '3.8⭐/ 134 reviews ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )),
                ],
              ),
              Container(
                // color: Colors.blue,
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.teal,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //start row
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellowAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellowAccent,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    size: 20,
                                    color: Colors.yellowAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ],
                                //
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '8kms to Lulu Mall',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 10, top: 10),
                              child: Text(
                                '₹1200',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              '/per day',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16 - .0),
                child: SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Book Now'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Description :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.all(20),
                height: 500,
                child: SingleChildScrollView(
                  //not working
                  child: Text(
                    "Nestled by Vembanad Lake, Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers. \n\n Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.\n\n The hotel features 269 spacious rooms, versatile meeting spaces, and diverse dining options. The well-appointed rooms offer scenic views of the backwaters or cityscape, complemented by 24-hour in-room dining and indulgent spa and salon services.\n\n Guests can enjoy various dining options available throughout the day, including fine dining and specialty cuisine at on-site restaurants such as Aroma, Mosaic, Skygrill, and Zoka.\n\n Crowne Plaza Kochi is an excellent venue for corporate and social events, providing fully equipped meeting rooms with advanced technology and versatile indoor and outdoor spaces suitable for different occasions. The pillarless ballroom can accommodate up to 600 guests in a theater-style arrangement. Additionally, there is a Backwater Pavilion capable of hosting grand events or wedding ceremonies for up to 2000 guests in a tranquil waterfront setting.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
