import 'package:flutter/material.dart';
import 'package:green/onboard/connect_pg.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E8E3),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 50, bottom: 100, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset("asset/images/pots.png"),

            SizedBox(
              height: 70,
            ),

            Text(
              "Discover Your Type Of Plant",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2D6936), //color code 0xff,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),

            // //second text ; 1 \n
            SizedBox(
              height: 32,
            ),

            // //wrap in a padding : and pad it from the right side...
            Text(
              "Tips N Tricks to grow a healthy plant",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2D6936), //color code 0xff,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),

            // Spacer(), //calculates the space of the screen and gives equal spacing all around

            SizedBox(
              height: 100,
            ),

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ConnectPage();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xff47734D)
                            .withOpacity(0.80), //#47734D 80% opacity

                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Continue",
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