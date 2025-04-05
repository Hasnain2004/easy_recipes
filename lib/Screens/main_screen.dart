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
        title: Container(
          alignment: const Alignment(1, 0),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/my.jpg'),
          ),
        ),
        backgroundColor: const Color(0xFFFEFADF),
        leading: const DrawerWidget(),
      ),
    );
  }
}
