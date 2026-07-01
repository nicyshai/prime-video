import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_prime_vedio/home_screen.dart';
import 'package:my_prime_vedio/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkedlogin();
  }
  Future<void> checkedlogin() async {
  SharedPreferences _pref=await SharedPreferences.getInstance();
  bool islogin=await _pref.getBool("islogin")??false;
  Timer(Duration(seconds: 3),(){
    Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
        if (islogin){
          return HomeScreen();
        }
        return LoginPage();

      }

      )
    );

  }
  );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/icons/amz-prime-icon.png",height: 100,width: 200,fit: .cover,),),
    );
  }
}
