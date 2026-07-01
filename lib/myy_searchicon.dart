import 'package:flutter/material.dart';

class MyySearchicon extends StatefulWidget {
  const MyySearchicon({super.key});

  @override
  State<MyySearchicon> createState() => _MyySearchiconState();
}

class _MyySearchiconState extends State<MyySearchicon> {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action and adventure",
      "Anime",
      "Comedy",
      "Drama",
      "Fantasy",
      "Horror",
      "Kids",
      "Romance",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Card(
              color: Colors.blueGrey[800],
              child: Container(
                height: 45,
                decoration: BoxDecoration(shape: BoxShape.rectangle),

                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: ListTile(
                  selectedTileColor: Colors.blueGrey[800],
                  leading: Icon(Icons.search, color: Colors.white70),
                  title: Text(
                    "Search by actor,title..",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  trailing: Icon(Icons.mic, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "Genres",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,

              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: genres.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 5.2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF1C2A38),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          genres[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.08),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Featured collections",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "Hindi",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "English",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Telugu",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Tamil",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Malayalam",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Kannada",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Bengali",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Panjabi",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Marathi",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Gujarathi",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
