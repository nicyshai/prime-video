import 'package:flutter/material.dart';

class MyyPersonicon extends StatelessWidget {
  MyyPersonicon({super.key});

  final List<Map<String, String>> movies = [
    {
      "image": "assets/icons/interstelr.jpg",
      "name":"intersteller",
      "year": "2023 170 min"
    },
    {
      "image": "assets/icons/RRR.jpg",
      "name": "RRR",
      "year": "2022 115 min"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: Colors.black,

        body: SafeArea(
          child: Column(
            children: [


              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                    ),
                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Nicyyyyyyy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),

                        Text(
                          "Switch profiles",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 35,
                    )
                  ],
                ),
              ),


              TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Watchlist"),
                  Tab(text: "Purchases"),
                ],
              ),

              Expanded(
                child: TabBarView(
                  children: [


                    Column(
                      children: [

                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [

                              Text(
                                "2 videos",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),

                              Spacer(),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 12,
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius:
                                  BorderRadius.circular(30),
                                ),

                                child: Text(
                                  "Filter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Expanded(
                          child: ListView.builder(
                            itemCount: movies.length,

                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                const EdgeInsets.all(10),

                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,

                                  children: [

                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(8),

                                      child: Image.asset(
                                        movies[index]["image"]!,
                                        width: 140,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                        children: [

                                          Text(
                                            movies[index]["name"]!,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),

                                          Text(
                                            movies[index]["year"]!,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),


                    Center(
                      child: Text(
                        "No Purchases",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}