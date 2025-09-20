import 'package:flutter/material.dart';

import 'onboard.dart';
import 'welcome_pg.dart';

class SpalshScreenPage extends StatefulWidget {
  const SpalshScreenPage({super.key});

  @override
  State<SpalshScreenPage> createState() => _SpalshScreenPageState();
}

class _SpalshScreenPageState extends State<SpalshScreenPage> {
  @override
  void initState() {
    // _nextPage();
    _proceed2();

    super.initState();
  }

  // void _nextPage() {
  //   Future.delayed(Duration(seconds: 3), () {
  //     return Navigator.push(context, MaterialPageRoute(builder: (context) {
  //       return OnboardingScreen();
  //     }));
  //   });
  // }

  void _proceed2() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return WelcomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff447055),
      body:

          //logo
          //     Center(
          //   child: Image.asset(
          //     "asset/images/GOGREEN.png",
          //     height: 50,
          //   ),
          // ),

          //text in row

          //     Center(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         "GO",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 64,
          //             fontStyle: FontStyle.italic,
          //             fontWeight: FontWeight.w100),
          //       ),
          //       Text("GREEN",
          //           style: TextStyle(
          //               color: Color(0xff99DAB3), //0xff
          //               fontSize: 64,
          //               fontWeight: FontWeight.w400))
          //     ],
          //   ),
          // ),

          //rich text

          Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "GO",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100),
              ),
              TextSpan(
                text: "GREEN",
                style: TextStyle(
                    color: Color(0xff99DAB3),
                    fontSize: 64,
                    // fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
