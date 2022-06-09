import 'package:fishee/page/detail_screen.dart';
import 'package:fishee/page/detail_screen_2.dart';
import 'package:fishee/page/main_screen.dart';
import 'package:fishee/page/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/mainscreen': (context) => MainScreen(),
        '/detailscreen': (context) => DetailScreen(),
        '/detailscreen2': (context) => DetailScreenTwo(),
      },
    );
  }
}
