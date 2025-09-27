import 'package:flutter/material.dart';
import 'package:green/food_drinks/splash.dart';

import 'onboard/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food & Drink', //Green Plant
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodScreenPage()
      //  SpalshScreenPage(),
    );
  }
}
