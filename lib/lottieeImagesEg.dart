import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LottieImagesEg(),));

}
class LottieImagesEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Lottie.asset('assets/LottiImages/cartPurchase.json'),
          // Lottie.network('https://lottiefiles.com/animations/cart-lifter-tQiBuw3BEn'),
          // Image(image: NetworkImage(''))

        ],
      ),
    );
  }

}