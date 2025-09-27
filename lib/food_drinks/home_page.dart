import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  // String result = "Press the button to fetch data";

  //fetch data from api
  //   Future<List<Breed>> fetchBreeds() async {
  //   final url = Uri.parse("https://dogapi.dog/api/v2/breeds");
  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> jsonBody = jsonDecode(response.body);
  //     final List<dynamic> data = jsonBody['data'];

  //     return data.map((item) => Breed.fromJson(item)).toList();
  //   } else {
  //     throw Exception("Failed to load breeds");
  //   }
  // }

  late Future<List<Breed>> breedsFuture;

  Future<List<Breed>> fetchDogBreeds() async {
    final url = Uri.parse("https://dogapi.dog/api/v2/breeds");

    final response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final List data = body["data"];

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Dog breeds loaded successfully",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );

        // Convert JSON to List<DogBreed>
        return data.map((e) => Breed.fromJson(e)).toList();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "Failed to load dog breeds",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );
        throw Exception("Failed to load dog breeds");
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "$e : Failed to load dog breeds",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      );
      throw Exception("Failed to load dog breeds");
    }
  }

  @override
  void initState() {
    breedsFuture =
        fetchDogBreeds(); //fetchBreeds();.. breedsFuture value to get items returned from the server
    super.initState();
  }

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
              "Breeds",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),

            FutureBuilder<List<Breed>>(
              future: breedsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("No breeds found"));
                } else {
                  final breeds = snapshot.data!;
                  return ListView.builder(
                    itemCount: breeds.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final breed = breeds[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: ListTile(
                          title: Text(breed.attributes?.name.toString() ?? ""),
                          subtitle: Text(breed.attributes?.description ?? ""),
                        ),
                      );
                    },
                  );
                }
              },
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
            // GridView.builder(
            //     itemCount: mycategory.length,
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         childAspectRatio:
            //             MediaQuery.of(context).size.width > 500 ? 0.65 : 0.345,
            //         mainAxisSpacing: 10,
            //         crossAxisSpacing: 10),
            //     itemBuilder: (context, index) {
            //       final myfood = mycategory[index];
            //       return Container(
            //         padding: EdgeInsets.only(top: 10),
            //         // height: 400,
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

class Breed {
  Breed({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  final String id;
  final String type;
  final Attributes? attributes;
  final Relationships? relationships;

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
      id: json["id"] ?? "",
      type: json["type"] ?? "",
      attributes: json["attributes"] == null
          ? null
          : Attributes.fromJson(json["attributes"]),
      relationships: json["relationships"] == null
          ? null
          : Relationships.fromJson(json["relationships"]),
    );
  }
}

class Attributes {
  Attributes({
    required this.name,
    required this.description,
    required this.life,
    required this.maleWeight,
    required this.femaleWeight,
    required this.hypoallergenic,
  });

  final String name;
  final String description;
  final FemaleWeight? life;
  final FemaleWeight? maleWeight;
  final FemaleWeight? femaleWeight;
  final bool hypoallergenic;

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
      name: json["name"] ?? "",
      description: json["description"] ?? "",
      life: json["life"] == null ? null : FemaleWeight.fromJson(json["life"]),
      maleWeight: json["male_weight"] == null
          ? null
          : FemaleWeight.fromJson(json["male_weight"]),
      femaleWeight: json["female_weight"] == null
          ? null
          : FemaleWeight.fromJson(json["female_weight"]),
      hypoallergenic: json["hypoallergenic"] ?? false,
    );
  }
}

class FemaleWeight {
  FemaleWeight({
    required this.max,
    required this.min,
  });

  final num max;
  final num min;

  factory FemaleWeight.fromJson(Map<String, dynamic> json) {
    return FemaleWeight(
      max: json["max"] ?? 0,
      min: json["min"] ?? 0,
    );
  }
}

class Relationships {
  Relationships({
    required this.group,
  });

  final Group? group;

  factory Relationships.fromJson(Map<String, dynamic> json) {
    return Relationships(
      group: json["group"] == null ? null : Group.fromJson(json["group"]),
    );
  }
}

class Group {
  Group({
    required this.data,
  });

  final Data? data;

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }
}

class Data {
  Data({
    required this.id,
    required this.type,
  });

  final String id;
  final String type;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json["id"] ?? "",
      type: json["type"] ?? "",
    );
  }
}
