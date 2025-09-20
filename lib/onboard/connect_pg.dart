import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
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
            Image.asset("asset/images/tree.png"),

            //

            Text(
              "Connect With Other Plant Lovers",
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
              "Join A Community",
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context){
                    //   return
                    // }))

                    print("Creation of Account");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xff47734D)
                            .withOpacity(0.80), //#47734D 80% opacity

                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Create Account",
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