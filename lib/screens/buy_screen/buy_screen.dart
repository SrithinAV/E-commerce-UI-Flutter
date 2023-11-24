import 'package:flutter/material.dart';
import 'package:e_commerce_ui_flutter/models/Product.dart';
import 'package:e_commerce_ui_flutter/screens/buy_screen/details/home.dart';
import '../../constants.dart';
import '../details/components/color_and_size.dart';

class buy_screen extends StatelessWidget {
  const buy_screen({super.key, required this.product_color});

  final Color product_color;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;


    return Scaffold(

      backgroundColor: Colors.white70,
      body: Home(product_color: product_color,),



    );
  }
}
