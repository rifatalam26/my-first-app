import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Laundry service/home_screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goscreen();
    super.initState();
  }
  Future goscreen()async{
    Future.delayed(Duration(seconds: 5)).then((Value){
    Get.to(HomeScreen2());
       });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.blue,
        backgroundColor: Colors.teal,
        strokeWidth: 5,
      )),
    );
  }
}
