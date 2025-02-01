import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text(
          "Bottom Navigation Bar",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.grey,
          child: Center(
            child: Text(
              "Bottom Nav Bar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ),
       bottomNavigationBar:AnimatedBottomNavigationBar(
           icons: [],
           activeIndex: 4,
           onTap: (int){}),
    );
  }
}
