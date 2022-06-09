import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splashIconSize: 300,
        duration: 3000,
        splash: 'assets/logo.png',
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.scaleTransition,
        // pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
