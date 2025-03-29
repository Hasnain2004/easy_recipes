import 'package:easy_recipes/Pages/intro_page.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splash:
              Lottie.asset('assets/animations/Animation - 1742110609155.json'),
          nextScreen: const IntroPage(),
          backgroundColor: const Color(0xFFFEFADF),
          splashIconSize: 250,
          animationDuration: const Duration(seconds: 2)),
    );
  }
}
