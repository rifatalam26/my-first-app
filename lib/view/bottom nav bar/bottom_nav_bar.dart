import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:my_app/view/home/home_screen.dart';

import '../notification/notification_screen.dart';
import '../profile ui/profile.dart';
import '../ui design/first_ui.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BottomNavBar> {
  int index =0;
  List<IconData> iconlist=[
    Icons.home,
    Icons.account_circle,
    Icons.photo,
    Icons.notifications_active_outlined,
  ];
  List <dynamic> screenlist=[
    HomeScreen(),
    Profile(),
    FirstUi(),
    NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Bottom Navigation Bar",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body:screenlist[index],
      // Center(
      //   child: Container(
      //     height: 100,
      //     width: 200,
      //     color: Colors.grey,
      //     child: Center(
      //       child: Text(
      //         "Bottom Nav Bar",
      //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.grey,
          inactiveColor: Colors.white,
          activeColor: Colors.orange,
          gapLocation: GapLocation.none,
          icons: iconlist,
          activeIndex: index,
          onTap: (i) {
            setState(() {
              index=i;
            });
          }),
    );
  }
}
