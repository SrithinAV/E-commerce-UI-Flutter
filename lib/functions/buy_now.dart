import 'package:flutter/material.dart';

import 'package:e_commerce_ui_flutter/screens/buy_screen/buy_screen.dart';

class BuyNow extends StatelessWidget {
  const BuyNow(
      {super.key,
        this.price,
        this.address,
        this.billing,
        required this.product_color});

  final String? price;
  final String? address;
  final String? billing;
  final Color product_color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADDRESS',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 25.00),
        ),
        backgroundColor: product_color,
        elevation: 0.00,
      ),
      body: buy_screen(product_color: product_color,),
    );
  }
}
