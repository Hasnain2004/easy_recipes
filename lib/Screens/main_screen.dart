import 'package:easy_recipes/Widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFADF),
      appBar: AppBar(
        title: const Text(
          'Main Screen',
          style: TextStyle(color: Color(0xFF6B4B3E)),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFEFADF),
        leading: DrawerWidget(),
      ),
    );
  }
}
