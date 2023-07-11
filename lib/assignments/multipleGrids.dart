import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: multGrids(),
    debugShowCheckedModeBanner: false,
  ));
}

class multGrids extends StatelessWidget {
  List<String> numberArray =
      List.generate(10, (index) => (index + 1).toString());
  List<String> dig = List.generate(10, (index) => "0/10");
  // var numberArray = [
  //   "1",
  //   "2",
  //   "3",
  //   "4",
  //   "5",
  //   "6",
  //   "7",
  //   "8",
  //   "9",
  //   "10",
  // ];
  // var dig = [
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  //   "0/20",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 4 using gridview"),
      ),
      body: ListView(
        children: [
          Container(
            // color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Some Text",
                        style: TextStyle(fontSize: 30,color: Colors.green),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Text("0/10", style: TextStyle(fontSize: 30,color: Colors.green)),
                  ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,

                // mainAxisSpacing:
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 100,
                      maxWidth: 100,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          numberArray[index],
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                );
              },
              itemCount: numberArray.length,
            ),
          ),
          Container(
            // color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Some Text",
                        style: TextStyle(fontSize: 30,color: Colors.green),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text("0/10", style: TextStyle(fontSize: 30,color: Colors.green)),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,

                // mainAxisSpacing:
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 100,
                      maxWidth: 100,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          numberArray[index],
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                );
              },
              itemCount: numberArray.length,
            ),
          ),
          Container(
            // color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Some Text",
                        style: TextStyle(fontSize: 30,color: Colors.green),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text("0/10", style: TextStyle(fontSize: 30,color: Colors.green)),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,

                // mainAxisSpacing:
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 100,
                      maxWidth: 100,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          numberArray[index],
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        Text(dig[index],style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                );
              },
              itemCount: numberArray.length,
            ),
          ),

        ],
      ),
    );
  }
}
