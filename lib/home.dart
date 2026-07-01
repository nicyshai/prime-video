import 'dart:core';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_prime_vedio/data/moviedata.dart';
import 'package:my_prime_vedio/my_vedio.dart';
import 'package:my_prime_vedio/primevedio_Navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> banners = [
    "assets/icons/1920x1080-hd-movie-1920-x-1080-6mrdsa92iedsuuvi.jpg",
    "assets/icons/avatar.jpg",
    "assets/icons/kannada.jpg",
    "assets/icons/man_of_steel.jpg",
    "assets/icons/neram.jpg",
    "assets/icons/pic2.jpg",
  ];

  List<String> language = [
    "assets/icons/neram.jpg",
    "assets/icons/avatar.jpg",
    "assets/icons/kannada.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.asset("assets/icons/amz-prime-icon.png", height: 50, width: 50),//"assets/icons/logo.png"
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Subscription",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.grid_view, size: 16, color: Colors.white),
            // icon: Image.asset("assets/icons/grid_add.ico",height: 10,width: 10,color: Colors.white,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 16, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Text("Movie", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Text("Live TV", style: TextStyle(color: Colors.white)),
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
                        (BuildContext context, int itemIndex, IntpageViewIndex) =>
                            Container(

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
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:topmovielist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PrimevedioNavigation(movie:topmovielist[index])));
                              },
                              child: Container(
                                width: 100,
                                margin: EdgeInsets.only(left: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: AssetImage(topmovielist[index].image),
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
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,


                      ),),
                      Text(
                        "Watch in your language",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(




                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.shade400,
                                ),
                                child: Positioned(
                                  left: 8,
                                  bottom: 8,
                                  child: Row(
                                    children: [
                                      // Text("Hindi",style: TextStyle(fontSize: 16,color: Colors.white),),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Hindi",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 54),
                                      Image(
                                        image: AssetImage("assets/icons/pic1.jpg"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.shade400,
                                ),
                                child: Positioned(
                                  left: 8,
                                  bottom: 8,
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Malayalam",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 24),
                                      Image(
                                        image: AssetImage("assets/icons/pic1.jpg"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.shade400,
                                ),
                                child: Positioned(
                                  left: 8,
                                  bottom: 8,
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "English",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 32),
                                      Image(
                                        image: AssetImage("assets/icons/pic1.jpg"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.shade400,
                                ),
                                child: Positioned(
                                  left: 8,
                                  bottom: 8,
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Tamil",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 52),
                                      Image(
                                        image: AssetImage("assets/icons/pic1.jpg"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
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
                                "Top movies",
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
                              itemCount: recommentedmovies.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrimevedioNavigation(movie:recommentedmovies[index])));
                                  },
                                  child: Container(
                                    width: 100,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: AssetImage(recommentedmovies[index].image),
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
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
