import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<MyCategory> mycategory = [
      MyCategory(
          mycolor: Color(0xffACC37A),
          id: '1',
          title: "Beef",
          imageUrl: "https://www.themealdb.com/images/category/beef.png",
          description:
              "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"),
      MyCategory(
          mycolor: Color(0xffA485F0),
          id: '2',
          title: "Chicken",
          imageUrl: "https://www.themealdb.com/images/category/chicken.png",
          description:
              "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"),
      MyCategory(
          id: '3',
          mycolor: Color(0xffF3CE74),
          title: "Dessert",
          imageUrl: "https://www.themealdb.com/images/category/dessert.png",
          description:
              "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"),
      MyCategory(
          id: '4',
          mycolor: Color(0xffFF7E7E),
          title: "Lamb",
          imageUrl: "https://www.themealdb.com/images/category/lamb.png",
          description:
              "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Text(
              "Discovery",
              // textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),

            Text(
              "The perfect Healthy Plans",
              style: TextStyle(
                  color: Colors.black,
                  // fontFamily: "",
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),

            SizedBox(
              height: 29,
            ),

            TextFormField(
              controller: searchController,
              style: TextStyle(color: Colors.black, fontSize: 18),
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                // hintText: "Search food and drinks here",
                // hintStyle: TextStyle(color: Colors.grey, fontSize: 14),

                labelText: "Search food and drinks here",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF5F5F5), width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),

                filled: true,
                fillColor: Color(0xffF5F5F5),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xff9C9C9C),
                ),

                // suffixIcon: Icon(Icons.remove_red_eye),

                //
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF5F5F5), width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),

                //
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFE7656), width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),

                //error border
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),

            //listview
            // ListView.builder(
            //     itemCount: mycategory.length,
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       final myfood = mycategory[index];

            //       // final myCatTitle = myfood.title;
            //       // final myDesc = myfood.description;

            //       return Container(
            //         padding: EdgeInsets.only(top: 10),
            //         decoration: BoxDecoration(
            //             color: myfood.mycolor.withOpacity(0.3),
            //             borderRadius: BorderRadius.circular(30)),
            //         margin: EdgeInsets.all(5),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Center(
            //               child: Image.network(
            //                 myfood.imageUrl,
            //                 height: 90,
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text(
            //                 myfood.title,
            //                 textAlign: TextAlign.left,
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 15),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text(
            //                 myfood.description,
            //                 textAlign: TextAlign.left,
            //                 style: TextStyle(
            //                     color: Colors.black38,
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w300),
            //               ),
            //             ),
            //             Align(
            //               alignment: Alignment.bottomRight,
            //               child: Container(
            //                 padding: EdgeInsets.all(12),
            //                 decoration: BoxDecoration(
            //                   color: myfood.mycolor,
            //                   borderRadius: BorderRadius.only(
            //                     topLeft: Radius.circular(30),
            //                     bottomRight: Radius.circular(30),
            //                   ),
            //                 ),
            //                 child: Icon(
            //                   Icons.add_circle_outline,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //     }),

            // Text("Screen Size is : ${MediaQuery.of(context).size.width}"),

            //gridview builder
            GridView.builder(
                itemCount: mycategory.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        MediaQuery.of(context).size.width > 500 ? 0.55 : 0.345,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  final myfood = mycategory[index];
                  return Container(
                    padding: EdgeInsets.only(top: 10),
                    // height: 400,
                    decoration: BoxDecoration(
                        color: myfood.mycolor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.network(
                            myfood.imageUrl,
                            height: 90,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            myfood.title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            myfood.description,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: myfood.mycolor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),

            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

//create a class for my category

class MyCategory {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final Color mycolor;

  MyCategory(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.mycolor,
      required this.description});
}
