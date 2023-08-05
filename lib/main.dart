import 'package:flutterapp/About.dart';
import 'package:flutterapp/Achievements.dart';
import 'package:flutterapp/ReachMe.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/preloader.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const preloader(),
        routes: {
          '/main_screen': (_) => const HomePage(),
        },
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(137, 106, 154, 218),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;
  bool change = true;
  List<Widget> pages = const [
    Home(),
    ReachMe(),
    Achievements(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: GoogleFonts.cinzel().fontFamily,
            ),
            text: 'Ronak ',
            children: [
              TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: GoogleFonts.cinzel().fontFamily,
                ),
                text: 'Suthar',
              ),
            ],
          ),
        ),
        actions: [
          Switch(
              activeColor: const Color.fromARGB(255, 166, 161, 161),
              value: change,
              onChanged: (bool newbool) {
                setState(() {
                  change = newbool;
                });
              })
        ],
      ),
      body: pages[currentpage],
      backgroundColor: change
          ? const Color.fromARGB(255, 100, 95, 95)
          : const Color.fromARGB(137, 203, 222, 246),
      bottomNavigationBar: NavigationBar(
        backgroundColor: change
            ? const Color.fromARGB(255, 154, 168, 204)
            : const Color.fromARGB(137, 203, 222, 246),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.man_3_sharp), label: 'About'),
          NavigationDestination(
              icon: Icon(Icons.rocket_launch_rounded), label: 'ReachMe'),
          NavigationDestination(
              icon: Icon(Icons.golf_course_sharp), label: 'Achievements'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentpage = index;
          });
        },
        selectedIndex: currentpage,
      ),
    );
  }
}
