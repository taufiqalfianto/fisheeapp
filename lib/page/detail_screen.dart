import 'package:fishee/route/routes.dart';
import 'package:fishee/theme.dart';
import 'package:fishee/widget/visualize_data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentindex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 380,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 414,
                          height: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(25),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/pod.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.MainScreen);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        right: 110,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Fish Pod 1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        bottom: 0,
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: currentindex == 0
                                      ? kLineColor
                                      : kWhiteColor,
                                  width: 4.0,
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/temperature.png'),
                                  scale: 4.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: currentindex == 1
                                      ? kLineColor
                                      : kWhiteColor,
                                  width: 4.0,
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/ph.png'),
                                  scale: 4.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: currentindex == 2
                                      ? kLineColor
                                      : kWhiteColor,
                                  width: 4.0,
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/humidity.png'),
                                  scale: 4.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: CarouselSlider(
                    items: [
                      DataVisual(
                        color: Colors.amber,
                        text: '20??C',
                        endvalue: 20,
                      ),
                      DataVisual(
                        color: Colors.pink,
                        text: '10',
                        endvalue: 10,
                      ),
                      DataVisual(
                        color: Colors.cyan,
                        text: '5',
                        endvalue: 5,
                      ),
                    ],
                    options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      initialPage: currentindex,
                      onPageChanged: (index, _) {
                        setState(
                          () {
                            currentindex = index;
                          },
                        );
                      },
                    ),
                    carouselController: controller,
                  ),
                  margin: EdgeInsets.all(5),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  height: 26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (currentindex == 0) {
                          } else {
                            controller.previousPage();
                          }
                          controller.previousPage();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: currentindex == 0 ? kGreyColor : kWhiteColor,
                        ),
                      ),
                      Text(
                        'TEMPERATURE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (currentindex == 2) {
                          } else {
                            controller.nextPage();
                          }

                          controller.nextPage();
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: currentindex == 2 ? kGreyColor : kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
