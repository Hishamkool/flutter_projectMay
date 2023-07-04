import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listBuilder2(),));

}
class listBuilder2 extends StatelessWidget{
  var data = ['Anu', 'Shinu', 'Munu', 'Shanu'];
  var coloursss = [900, 600, 300, 100];
  var numbers = ["9751166318", "9605522116", "8489966318", "9751144318"];
  var images = [
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png',
    'assets/images/cat heart.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
        return Card(
          color: Colors.red[coloursss[index]],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image(image: AssetImage(images[index]),),
              title: Text(data[index]),
              subtitle: Text(numbers[index]),
              trailing: Icon(Icons.call,color: Colors.white,),

            ),
          ),
        );
      }) ,
    );
  }

}