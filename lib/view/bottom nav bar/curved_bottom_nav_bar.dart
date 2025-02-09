import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class CurvedBottomNavBarScreen extends StatefulWidget {
  const CurvedBottomNavBarScreen({super.key});

  @override
  State<CurvedBottomNavBarScreen> createState() => _CurvedBottomNavBarScreenState();
}

class _CurvedBottomNavBarScreenState extends State<CurvedBottomNavBarScreen> {

  var items=<Widget>[
    Icon(Icons.home,size: 30,),
    Icon(Icons.favorite,size: 30,),
    Icon(Icons.account_circle,size: 30,),
    Icon(Icons.settings,size: 30,),
    Icon(Icons.search,size: 30,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: CurvedNavigationBar(
          items: items
      ),
    );
  }
}
