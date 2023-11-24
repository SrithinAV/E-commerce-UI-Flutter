import 'package:flutter/material.dart';

class ReusableIcon extends StatelessWidget {
  const ReusableIcon(
      {super.key, required this.product_color, required this.icons});
  final Color product_color;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 70.0,
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.only(right: 30.00),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white, // Use Colors.white for solid white color
      ),
      child: Icon(
        icons,
        color: product_color,
        size: 65.0,
      ),
    );
  }
}

class ResuableBody extends StatelessWidget {
  const ResuableBody({super.key, required this.body});

  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        body,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20.00,
        ),
      ),
    );
  }
}
