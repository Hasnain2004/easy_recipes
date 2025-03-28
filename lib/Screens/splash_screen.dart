import 'package:easy_recipes/Pages/HomePage.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash:
            Lottie.asset('assets/animations/Animation - 1742110609155.json'),
        nextScreen: HomePage(),
        backgroundColor: Color(0xFFFEFADF),
        splashIconSize: 250,
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
