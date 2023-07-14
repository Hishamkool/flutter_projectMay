import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listViewAssignment5(),
    debugShowCheckedModeBanner: false,
  ));
}

class listViewAssignment5 extends StatelessWidget {
  var titles = ['Android', 'Flutter', 'IOS', 'Java', 'Phyton', 'React'];

  var titles2 = [
    'Android Tutorial',
    'Flutter Tutorial',
    'IOS Tutorial',
    'Java Tutorial',
    ' Phyton Tutotial',
    'React Tutorial'
  ];
  var containerColors = [
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.pink,
    Colors.pinkAccent,
    Colors.pinkAccent,
    Colors.yellowAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Align(alignment: Alignment.center, child: Text('Grouped ListView')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue[50],
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titles[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                  child: Card(
                    // margin: EdgeInsets.all(50),

                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),

                    child: ListTile(
                      leading: Container(

                        height: 100,
                        width: 50,
                        color: containerColors[index],
                      ),
                      title: Text(titles2[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_circle),
                              Text('HanTh'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('24/12/20'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: titles.length,
      ),
    );
  }
}
