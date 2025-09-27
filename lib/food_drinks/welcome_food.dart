import 'package:flutter/material.dart';
import 'package:green/food_drinks/home_page.dart';

class FoodWelcomePage extends StatefulWidget {
  const FoodWelcomePage({super.key});

  @override
  State<FoodWelcomePage> createState() => _FoodWelcomePageState();
}

class _FoodWelcomePageState extends State<FoodWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        // padding: const EdgeInsets.only(top: 50.0, bottom: 50),
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //step 1: use listtile
            // ListTile(
            //   title: Text(
            //     "Welcome",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Color(0xff3C3B3B),
            //         fontSize: 48,
            //         fontWeight: FontWeight.w700),
            //   ),
            //   subtitle: Text(
            //     "Find our perfect, healthy\nFresh Juices & Smoothies",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Color(0xff3C3B3B),
            //         fontSize: 24,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),

            //step 2 : USe another Column to show welcome and the other text.
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3C3B3B),
                        fontSize: 48,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Find our perfect, healthy\nFresh Food, Juices & Smoothies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3C3B3B),
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            // Text("Screen Size is : ${MediaQuery.of(context).size.width}"),

            //buttons with icons at the bottom
            // Container(
            //   padding: EdgeInsets.all(15),
            //   width: MediaQuery.of(context).size.width * 0.8,
            //   // 300,
            //   decoration: BoxDecoration(
            //     color: Color(0xffFE7656),
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(
            //         Icons.north_east,
            //         color: Colors.white,
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Text(
            //         "Let’s drink healthy!",
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16,
            //             fontWeight: FontWeight.w500),
            //       ),
            //     ],
            //   ),
            // ),

            //button without icon
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage(); //LoginPage();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffFE7656),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Let’s drink & eat healthy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
