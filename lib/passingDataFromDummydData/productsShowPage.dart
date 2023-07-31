

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may_1/passingDataFromDummydData/dummydata.dart';

class Productsshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = sampleProducts.firstWhere((data) => data["id"] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Image.asset(product['image']),
          Text("${product['id'].toString()}"),
          Text("${product['name']}"),
          Text("${product['description']}"),
        ],
      ),
    );
  }
}
