import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class preloader extends StatefulWidget {
  const preloader({super.key});

  @override
  State<preloader> createState() => _preloaderState();
}

class _preloaderState extends State<preloader> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  void _navigateToMainScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // Replace 3 with your desired duration
      Navigator.pushReplacementNamed(context, '/main_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'images/animation_lkxvspn1.json',
          height: 150,
          width: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
