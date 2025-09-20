import 'package:flutter/material.dart';
import 'package:green/food_drinks/welcome_food.dart';

class FoodScreenPage extends StatefulWidget {
  const FoodScreenPage({super.key});

  @override
  State<FoodScreenPage> createState() => _FoodScreenPageState();
}

class _FoodScreenPageState extends State<FoodScreenPage> {
  @override
  void initState() {
    super.initState();
    _nextPage();
  }

  void _nextPage() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return FoodWelcomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/images/drink.png",
              scale: 1.0,
              height: 130,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Food & Drinks",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffFE7656),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
