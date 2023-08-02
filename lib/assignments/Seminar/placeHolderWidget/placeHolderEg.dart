import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PlaceHolderEg(),
    debugShowCheckedModeBanner: false,
  ));
}

class PlaceHolderEg extends StatefulWidget {
  @override
  _PlaceHolderEgState createState() => _PlaceHolderEgState();
}

class _PlaceHolderEgState extends State<PlaceHolderEg> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate an artificial delay of 2 seconds before showing the image
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _isLoading
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1,vertical: 0),
            child: Center(
              child: Placeholder(

                fallbackHeight: 300,
              ),
            ),
          )
              : Center(
            child: Image.asset(
              "assets/images/FarmersFreshZone/farms/farm1.jpg",
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Travel'))
        ],
      ),
    );
  }
}
