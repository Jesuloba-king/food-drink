import 'package:flutter/material.dart';

import 'onboard.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // margin: , //gives space outside
        padding: EdgeInsets.only(
            left: 20, top: 50, bottom: 100, right: 20), //gives space inside
        decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "asset/images/plant.png")) // AssetImage / NetworkImage
            ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Color(0xff2D6936), //color code 0xff,
                  fontSize: 64,
                  fontWeight: FontWeight.w600),
            ),

            // //second text ; 1 \n
            SizedBox(
              height: 45,
            ),
            Text(
              "we’re glad that \nyou are here", //use \n
              style: TextStyle(
                  color: Color(0xff2D6936), //color code 0xff,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),

            //wrap in a padding : and pad it from the right side...
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 100),
              child: Text(
                "we’re glad that you are here",
                style: TextStyle(
                    color: Color(0xff2D6936), //color code 0xff,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),

            Spacer(), //calculates the space of the screen and gives equal spacing all around

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // go to nxt page by clicking this button...
                //wrap the container with GestureDetector or InkWell

                InkWell(
                  onTap: () {
                    // perform action to go nextpage..
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DiscoverPage();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xff47734D)
                            .withOpacity(0.80), //#47734D 80% opacity
                        borderRadius: BorderRadius.circular(20)
                        // to give a border radius to particular sides of the button
                        // BorderRadius.only(
                        //   // topLeft: Radius.circular(20),
                        //   topRight: Radius.circular(20),
                        //   // bottomLeft: Radius.circular(20),
                        // ),
                        ),
                    child: Text(
                      "Let's get started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Image.asset / Image.network