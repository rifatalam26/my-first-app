import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  static const String KEYLOGIN ="login";
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }

  Future<void> whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
   var isLoggedIn= sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 3), () {
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        }else{
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login()));
        }
      }else{
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    });
  }
}
