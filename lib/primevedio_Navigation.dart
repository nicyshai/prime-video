import 'package:flutter/material.dart';
import 'package:my_prime_vedio/data/moviedata.dart';
import 'package:my_prime_vedio/my_vedio.dart';

class PrimevedioNavigation extends StatefulWidget {
 final Movies movie;
  const PrimevedioNavigation({super.key, required this.movie});

  @override
  State<PrimevedioNavigation> createState() => _PrimevedioNavigationState();
}

class _PrimevedioNavigationState extends State<PrimevedioNavigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> banners2 = [
    "assets/icons/1920x1080-hd-movie-1920-x-1080-6mrdsa92iedsuuvi.jpg",
    "assets/icons/avatar.jpg",
    "assets/icons/kannada.jpg",
    "assets/icons/man_of_steel.jpg",
    "assets/icons/neram.jpg",
    "assets/icons/pic2.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.cast)),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.yellow,
                height: 300,
                width: double.infinity,
                margin: EdgeInsets.only(left: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white24, Colors.black45],
                        ),

                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(widget.movie.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Image.asset(
                        "assets/icons/play_store_512.png",
                        height: 20,
                        width: 20,
                      ),
                    ),

                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Text(
                        widget.movie.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyVedio(movies: widget.movie,),
                    ),
                  );
                },
                child: Text("Play", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(onPressed: () {}, child: Text("Download")),
            ),
            SizedBox(
              height: 30,
              width: double.maxFinite,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.replay, size: 14, color: Colors.white),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Start over",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.ondemand_video_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Trailer",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.add, size: 20, color: Colors.white),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Watchlist",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Like",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.thumb_down_off_alt_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Not for me",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.share_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Share",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
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
            SizedBox(height: 20),
            Column(
              children: [
                Text(widget.movie.desc, maxLines: 3),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Details"),
                      Tab(text: "Related"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.movie.director,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          widget.movie.producer,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          widget.movie.cast,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 180,
                    child: ListView.builder(
                      itemCount: relatedlist.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 180,

                          width: 140,
                          margin: EdgeInsets.all(10),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  relatedlist[index].image,
                                  fit: BoxFit.cover,
                                  width: 140,
                                  height: 180,
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                left: 8,
                                child: Image.asset(
                                  "${relatedlist[index].image}",
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Positioned(
                                top: 8,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 3,
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    "NEW MOVIE",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
