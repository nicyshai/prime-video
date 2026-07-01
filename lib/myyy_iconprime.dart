import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyyyIconprime extends StatefulWidget {
  const MyyyIconprime({super.key});

  @override
  State<MyyyIconprime> createState() => _MyyyIconprimeState();
}

class _MyyyIconprimeState extends State<MyyyIconprime> {
  List<String> banners = [
    "assets/icons/KGF2.jpg",
    "assets/icons/kannada.jpg",
    "assets/icons/neram.jpg",
    "assets/icons/spider-man-2.jpg",
    "assets/icons/avatar.jpg",
  ];
  List<String> movies = [
    "assets/icons/the_dark_knight.jpg",
    "assets/icons/RRR.jpg"
        "assets/icons/1920x1080-hd-movie-1920-x-1080-6mrdsa92iedsuuvi.jpg",
    "assets/icons/man_of_steel.jpg",
    "assets/icons/neram.jpg",
    "assets/icons/pic2.jpg",
  ];
  List<String> movies2 = [
    "assets/icons/interstelr.jpg",
    "assets/icons/KGF2.jpg",
    "assets/icons/kannada.jpg",
    "assets/icons/neram.jpg",
    "assets/icons/spider-man-2.jpg",
    "assets/icons/the_dark_knight.jpg",
  ];
  List<String> movies3 = [
    "assets/icons/AA....A.jpg",
    "assets/icons/dune.jpg",
    "assets/icons/pic5malay.jpg",
    "assets/icons/pic1.jpg",
    "assets/icons/pic6.jpg",
  ];

  List<String> language = [
    "assets/icons/neram.jpg",
    "assets/icons/avatar.jpg",
    "assets/icons/kannada.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      backgroundColor: Color(0xff000814),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Prime",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Text(
                        "Movie",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),

                      child: Text(
                        "TV shows",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Column(
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,

                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: banners.length,
                      itemBuilder:
                          (
                            BuildContext context,
                            int itemIndex,
                            IntpageViewIndex,
                          ) => Container(
                            decoration: BoxDecoration(
                              color: Colors.black,

                              image: DecorationImage(
                                image: AssetImage("${banners[itemIndex]}"),
                                fit: .fill, //. cover
                              ),
                            ),
                          ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,

                            child: Text(
                              "Recommended movies",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: movies.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 100,
                                margin: EdgeInsets.only(left: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: AssetImage(movies[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      right: 8,
                                      child: Image.asset(
                                        "assets/icons/prime_bw_logo.jpg",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Text(
                                        "NEW MOVIE",
                                        style: TextStyle(
                                          fontSize: 10,
                                          backgroundColor: Colors.white,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,

                        child: Text(
                          "Top movies",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies2.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 100,
                            margin: EdgeInsets.only(left: 10),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(movies2[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image.asset(
                                    "assets/icons/prime_bw_logo.jpg",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Text(
                                    "NEW MOVIE",
                                    style: TextStyle(
                                      fontSize: 10,
                                      backgroundColor: Colors.white,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,

                        child: Text(
                          "Drama movies",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies3.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 100,
                            margin: EdgeInsets.only(left: 10),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(movies3[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image.asset(
                                    "assets/icons/prime_bw_logo.jpg",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Text(
                                    "NEW MOVIE",
                                    style: TextStyle(
                                      fontSize: 10,
                                      backgroundColor: Colors.white,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
