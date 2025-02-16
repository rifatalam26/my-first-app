import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Laundry service/home_screen2.dart';
import '../Laundry service/laundry_service.dart';

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
    Future.delayed(Duration(seconds: 10)).then((Value){
    Get.to(LoginScreen());
       });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: Image.network("https://global.discourse-cdn.com/sitepoint/original/3X/e/3/e352b26bbfa8b233050087d6cb32667da3ff809c.gif")),
      //     child: CircularProgressIndicator(
      //   color: Colors.blue,
      //   backgroundColor: Colors.teal,
      //   strokeWidth: 5,
      // )
        ),
    );
  }
}
