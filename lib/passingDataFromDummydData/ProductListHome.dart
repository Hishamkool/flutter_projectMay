import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may_1/passingDataFromDummydData/dummydata.dart';
import 'package:flutter_may_1/passingDataFromDummydData/productsShowPage.dart';

void main() {
  runApp(MaterialApp(
    home: ProductsHome(),
    routes: {
      'productsShowPage': (context) => Productsshow(),
    },
  ));
}

class ProductsHome extends StatefulWidget {
  @override
  State<ProductsHome> createState() => _ProductsHomeState();
}

class _ProductsHomeState extends State<ProductsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView(
        children: sampleProducts.map((productList) {
          return TextButton(
              onPressed: () => gotToNextPage(context, productList['id']),
              child: Text('${productList["name"]}',style: TextStyle(fontSize: 23),));
        }).toList(),
      ),
    );
  }

  void gotToNextPage(BuildContext context, productList) {
    Navigator.of(context).pushNamed("productsShowPage", arguments: productList);
  }
}
