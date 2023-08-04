import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  final List _achieved = [
    'images/achieved/c1.jpg',
    'images/achieved/c2.jpg',
    'images/achieved/c3.jpg',
    'images/achieved/c4.jpg',
    'images/achieved/c5.jpg',
    'images/achieved/c6.jpg',
    'images/achieved/c7.jpg',
    'images/achieved/c8.jpg',
    'images/achieved/c9.png',
    'images/achieved/c10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 237, 243),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
                height: 700.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                scrollDirection: Axis.vertical),
            items: _achieved.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(i),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
