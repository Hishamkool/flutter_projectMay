import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MediaQuerryEg(),
    debugShowCheckedModeBanner: false,
  ));
}

class MediaQuerryEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mQuerry = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //container 1

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.blue[900]),
                // height: MediaQuery.of(context).size.height * 0.6,
                height: mQuerry.height *0.6,
                width: mQuerry.width * 0.4,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Text("Height 60% = ${mQuerry.height * 0.6}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16))),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text("Width 40% = ${mQuerry.width * 0.4}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16))),
                  ],
                ),
              ),
              Container(
                //container 2
                decoration: BoxDecoration(
                    color: Colors.purple[900],
                    border: Border.all(color: Colors.black, width: 2)),

                height: mQuerry.height * 0.4,
                width: mQuerry.width * 0.6,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Height 40% = ${mQuerry.height * 0.4}",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text("Width  60% = ${mQuerry.width * 0.6}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16))),
                  ],
                ),
              ),
            ],
          ),
          Column(
            //column 2
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text("Total height = ${mQuerry.height}",
                        style: const TextStyle(
                            color: Colors.black, fontSize: 16))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text("Total width = ${mQuerry.width}",
                        style: const TextStyle(
                            color: Colors.black, fontSize: 16))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
