import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfileUI.dart';
import 'listBuilder1.dart';

void main(){
  runApp(MaterialApp(home: BottomNavigationbarrr(),
  debugShowCheckedModeBanner: false,));

}
class BottomNavigationbarrr extends StatefulWidget{
  @override
  State<BottomNavigationbarrr> createState() => _BottomNavigationbarrrState();
}

class _BottomNavigationbarrrState extends State<BottomNavigationbarrr> {
  int curretlySelected = 0;
  List pages = [
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Home'),
        ),

      ),
    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('search'),
      ),

    ),
    Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('favourites'),
      ),

    ),
    profileUI(),

  ];
  void onItemClicked(int index)
  {
    setState(() {
      curretlySelected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation example'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[900],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.greenAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),

        ],currentIndex: curretlySelected,
        onTap: onItemClicked,
      ),
      body: pages.elementAt(curretlySelected),
    );
  }
}