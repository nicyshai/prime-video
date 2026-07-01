import 'package:flutter/material.dart';

class MyyDownload extends StatefulWidget {
  const MyyDownload({super.key});

  @override
  State<MyyDownload> createState() => _MyyDownloadState();
}

class _MyyDownloadState extends State<MyyDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Downloads",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 220),
          Center(
            child: Text(
              "No videos downloaded",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // navigate to myyy _homeicon page
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey[800],
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Find videos to download",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Auto Downloads: On",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(width: 15),

              Text(
                " Manage downloads",
                style: TextStyle(fontSize: 16, color: Colors.blue[900]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
