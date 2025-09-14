import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class CurvedBottomNavBarScreen extends StatefulWidget {
  const CurvedBottomNavBarScreen({super.key});

  @override
  State<CurvedBottomNavBarScreen> createState() => _CurvedBottomNavBarScreenState();
}

class _CurvedBottomNavBarScreenState extends State<CurvedBottomNavBarScreen> {
  var index=2;
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
      // extendBody: true,
      backgroundColor: Colors.purple,
       body:
      // Image.network("https://images.pexels.com/photos/1590549/pexels-photo-1590549.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
      Center(
        child: Text("$index",style: TextStyle(fontSize: 120,fontWeight: FontWeight.bold),),
      ),

      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue,
        color: Colors.yellowAccent,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 300),
        height: 60,
        index:index,
          items: items,
        onTap: (i){
          setState(() {
            index=i;
          });
        },
      ),
    );
  }
}
