// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isplaying = false;
    final player = AudioPlayer();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 220, 222, 234),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('images/Ronak_suthar.jpg'),
                        maxRadius: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 210, left: 200),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (!isplaying) {
                                await player.play(
                                  UrlSource(
                                      'https://datashat.net/music_for_programming_1-datassette.mp3'),
                                );
                                isplaying = true;
                              } else {
                                isplaying = false;
                                player.stop();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1000),
                              ),
                              fixedSize: const Size(70, 70),
                            ),
                            child: const Icon(Icons.play_arrow),
                          ),
                        ),
                      ),
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.cinzel().fontFamily,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Ronak Suthar',
                              speed: const Duration(
                                milliseconds: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/Flask-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/React-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/Blender-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/CPP.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/Flutter-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/MySQL-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/Python-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/VSCode-Dark.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/MongoDB.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 150, 149, 149),
                                  offset: Offset(10, 8),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              'images/JavaScript.svg',
                              height: 70,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
