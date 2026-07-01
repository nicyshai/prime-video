import 'package:flutter/material.dart';

import 'package:my_prime_vedio/MyyPersonicon.dart';

import 'package:my_prime_vedio/home_screen.dart';
import 'package:my_prime_vedio/home.dart';
import 'package:my_prime_vedio/login_page.dart';


import 'package:my_prime_vedio/my_prime_bottom.dart';
import 'package:my_prime_vedio/my_vedio.dart';
import 'package:my_prime_vedio/myyy_iconprime.dart';
import 'package:my_prime_vedio/primevedio_Navigation.dart';
import 'package:my_prime_vedio/splash_sceen.dart';

import 'my_personicon_Demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home:SplashSceen()
    );
  }
}
