import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BottomNavBar> {
  int index =0;
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
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.black,
          inactiveColor: Colors.white,
          activeColor: Colors.orange,
          gapLocation: GapLocation.none,
          icons: <IconData>[
            Icons.home,
            Icons.add_a_photo,
            Icons.account_circle,
            Icons.photo,
            Icons.settings
          ],
          activeIndex: index,
          onTap: (i) {
            setState(() {
              index=i;
            });
          }),
    );
  }
}
