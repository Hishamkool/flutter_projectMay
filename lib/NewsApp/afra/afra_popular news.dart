import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: news(),
  ));
}

class news extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.blueGrey[800],
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 320, top: 50, left: 10),
                      child: Text(
                        "Popular News",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close),
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            height: 190,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 179,
                      // width: 500,
                      decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(20)),
                    )),
                Positioned(
                    top: 20,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(

                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAkjH_CoKv1l3QB3FjwF2pYeZbHZJJMiPmYA&usqp=CAU"))),
                      ),
                    )),
                Positioned(
                    top: 30,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Column(
                        children: [
                          Text(
                            "Emilia Clarke Says No More Fan Photos After Being Approached During a Panic Attack",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 95,
                    left: 185,
                    child: Container(
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: Center(
                        child: Text("Entertainment"),
                      ),
                    )),
                Positioned(
                    top: 90,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("22 December 10"),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(
                            Icons.favorite,
                            size: 18,
                          ),
                          Text("15")
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            height: 190,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 179,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    )),
                Positioned(
                    top: 20,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRcFd4xbFc8d0ulFgl4BPk-e2DXa4Q5fRAA&usqp=CAU"))),
                      ),
                    )),
                Positioned(
                    top: 30,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Column(
                        children: [
                          Text(
                            "Kendall Jernner remains the worlds most popular top model",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 95,
                    left: 185,
                    child: Container(
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: Center(
                        child: Text("Entertainment"),
                      ),
                    )),
                Positioned(
                    top: 90,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("22 December 19"),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(
                            Icons.favorite,
                            size: 18,
                          ),
                          Text("15")
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            height: 190,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 179,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    )),
                Positioned(
                    top: 20,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuuHMWfQ_YJ5wHJ1EyZDOEbBJNe0mJkmqfWdp7HJeGMHbj_kA6eajpLqJDYtmWFrTWhdU&usqp=CAU"))),
                      ),
                    )),
                Positioned(
                    top: 30,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Column(
                        children: [
                          Text(
                            "Facebook is exploring building its own operating system",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 95,
                    left: 185,
                    child: Container(
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: Center(
                        child: Text("Technology"),
                      ),
                    )),
                Positioned(
                    top: 90,
                    left: 200,
                    child: Container(
                      height: 150,
                      width: 280,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("22 December 19"),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(
                            Icons.favorite,
                            size: 18,
                          ),
                          Text("14")
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
