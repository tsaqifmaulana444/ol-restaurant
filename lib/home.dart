import 'package:flutter/material.dart';
import 'nearby.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String user = "GM Anish";
  String profile = "profil.png";
  String mainfood = "head1.png";
  String head2 = "head2.png";
  String head3 = "head3.png";
  String head4 = "head4.png";

  final List<Menus> nearby = [
    Menus(img: 'image3.png', name: "Lemon Soda", star: "4.8 (2K)", price: "50.000"),
    Menus(img: 'image2.png', name: "Masala Lamb Curry", star: "5 (13.6K)", price: "50.000"),
    Menus(img: 'image1.png', name: "Pasta Bologna", star: "4.8 (1.7K)", price: "50.000"),
  ];

  final List<Menus> allMenus = [
    Menus(img: 'image4.png', name: "Mushroom Ramen", star: "5 (9.2K)", price: "50.000"),
    Menus(img: 'image5.png', name: "Espresso", star: "4.8 (1.7K)", price: "50.000"),
    Menus(img: 'image6.png', name: "Croissant", star: "4.4 (2.2K)", price: "50.000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
      Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 35, 0, 10),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const SizedBox(
                      width: 200.0,
                      height: 36.0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  width: 0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  width: 0)),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 154, 154, 154),
                              fontSize: 12,
                              fontFamily: 'Roboto'),
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(right: 4),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/$profile'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 800,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Text(
              "Welcome, $user",
              style: const TextStyle(
                  fontSize: 21.5,
                  fontFamily: "IBMPlexSansBold",
                  color: Color.fromARGB(255, 20, 20, 20)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 330,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('images/$mainfood'),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Main Dish",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 71, 71)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('images/$head2'),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Dessert",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 71, 71)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('images/$head3'),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Sea Food",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 71, 71)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage('images/$head4'),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "All",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 71, 71)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 800,
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              "Popular Items",
              style: TextStyle(
                  fontSize: 21.5,
                  fontFamily: "IBMPlexSansBold",
                  color: Color.fromARGB(255, 20, 20, 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: const Image(image: AssetImage("images/popular.png")),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 800,
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Nearby You",
                      style: TextStyle(
                          fontSize: 21.5,
                          fontFamily: "IBMPlexSansBold",
                          color: Color.fromARGB(255, 20, 20, 20)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromARGB(255, 250, 139, 66),
                              fontSize: 17,
                              fontFamily: "Roboto"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 343,
            margin: const EdgeInsets.only(top: 9),
            padding: const EdgeInsets.fromLTRB(10.5, 0, 10.5, 20),
            child: SizedBox(
              height: 225,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nearby.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(6.0, 0, 6.0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'images/${nearby[index].img}',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 160,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                              child: Text(
                                nearby[index].name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
                              child: Row(
                                children: [
                                  const Icon(
                                      Icons.star_rate_rounded,
                                      color: Color.fromARGB(255, 255, 199, 0),
                                    ),
                                  Text(
                                    nearby[index].star,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Rp. ${nearby[index].price}",
                                    style: const TextStyle(fontSize: 14,),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 37),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                      )
                                    )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 1),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 800,
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "All Menus",
                      style: TextStyle(
                          fontSize: 21.5,
                          fontFamily: "IBMPlexSansBold",
                          color: Color.fromARGB(255, 20, 20, 20)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromARGB(255, 250, 139, 66),
                              fontSize: 17,
                              fontFamily: "Roboto"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 343,
            margin: const EdgeInsets.only(top: 9),
            padding: const EdgeInsets.fromLTRB(10.5, 0, 10.5, 50),
            child: SizedBox(
              height: 225,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allMenus.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(6.0, 0, 6.0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                'images/${allMenus[index].img}',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 160,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                              child: Text(
                                allMenus[index].name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
                              child: Row(
                                children: [
                                  const Icon(
                                      Icons.star_rate_rounded,
                                      color: Color.fromARGB(255, 255, 199, 0),
                                    ),
                                  Text(
                                    allMenus[index].star,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Rp. ${allMenus[index].price}",
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 37),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                      )
                                    )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}