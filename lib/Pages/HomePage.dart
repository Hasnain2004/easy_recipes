import 'package:easy_recipes/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFADF),
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: TextStyle(color: Color(0xFF6B4B3E)),
        ),
        backgroundColor: Color(0xFF6B4B3E),
        centerTitle: true,
      ),
      body: Container(
        width: mediaQuery.size.width,
      ),
    );
  }
}
