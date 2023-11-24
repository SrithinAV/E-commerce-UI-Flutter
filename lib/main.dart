import 'package:flutter/material.dart';
import 'package:e_commerce_ui_flutter/constants.dart';
import 'package:e_commerce_ui_flutter/screens/home/home_screen.dart';
import 'package:e_commerce_ui_flutter/screens/home/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
