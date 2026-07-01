import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'myy_download.dart';
import 'MyyPersonicon.dart';
import 'myy_searchicon.dart';
import 'myyy_iconprime.dart';

class MyPrimeBottom extends StatefulWidget {
  const MyPrimeBottom({super.key});

  @override
  State<MyPrimeBottom> createState() => _MyPrimeBottomState();
}

class _MyPrimeBottomState extends State<MyPrimeBottom> {
  int current_index=0;
 // List<Widget>pages=[Icon(Icons.home,color: Colors.grey,),Text("prime",style: TextStyle(color: Colors.white,fontSize: 16),),Icon(Icons.person,color: Colors.blue,),Icon(Icons.arrow_downward_rounded,color: Colors.white,),Icon(Icons.search)

  //];
  List<Widget>pages=[Home(),MyyyIconprime(),MyyPersonicon(),MyyDownload(),MyySearchicon()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        selectedIconTheme: IconThemeData(size: 28),
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        currentIndex: current_index,
        onTap: (index){
          setState(() {
            current_index=index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.update_rounded), label: "Prime",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Watchlist"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_downward_rounded), label: "Download"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],



      ),
    );

  }
}
