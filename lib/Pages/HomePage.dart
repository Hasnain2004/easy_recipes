import 'package:easy_recipes/Pages/settings.dart';
import 'package:easy_recipes/Screens/drawer_screen.dart';
import 'package:easy_recipes/Screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: 30,
      angle: 0,
      androidCloseOnBackTap: true,
      menuBackgroundColor: const Color(0xFF6B4B3E),
      mainScreenTapClose: true,
      style: DrawerStyle.style4,
      showShadow: true,
      slideWidth: 200,
    );
  }

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return const MainScreen();
      case 1:
        return Container(
          color: Colors.amber,
        );
      case 2:
        return Container(
          color: Colors.blue,
        );
      case 3:
        return const Settings();
      default:
        return const HomePage();
    }
  }
}
