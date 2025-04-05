import 'package:easy_recipes/main.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFADF),
      body: Center(
        child: Container(
          width: mediaQuery.size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 6,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/intro3.avif'),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Welcome to Easy Recipes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B4B3E),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Start cooking now and bring your kitchen to life!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6B4B3E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
