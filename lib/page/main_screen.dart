import 'package:fishee/route/routes.dart';
import 'package:fishee/widget/indicator.dart';
import 'package:flutter/material.dart';
import 'package:fishee/theme.dart';
import '../widget/menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: SafeArea(
        child: ListView(
          children: [
            //appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 25,
                  child: Row(
                    children: [
                      Image.asset('assets/menu.png'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset('assets/avatar.png'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            //indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IndicatorMenu(
                    image: 'assets/temperature.png',
                    judul: 'Temperature',
                    suhu: '25°C'),
                IndicatorMenu(
                    image: 'assets/ph.png', judul: 'PH', suhu: '25°C'),
                IndicatorMenu(
                    image: 'assets/humidity.png',
                    judul: 'Humidity',
                    suhu: '25°C'),
              ],
            ),
            //menu 1
            SizedBox(height: 35),
            ListMenu(
                text: 'Fish Pod 1',
                imageurl: 'assets/pod.png',
                route: Routes.DetailScreen),
            SizedBox(height: 35),
            ListMenu(
                text: 'Fish Pod 2',
                imageurl: 'assets/pod1.png',
                route: Routes.DetailScreen2),
          ],
        ),
      ),
    );
  }
}
