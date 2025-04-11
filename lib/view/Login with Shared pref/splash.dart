import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Quize App/quize_app.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<Splash> {
  @override
  void initState() {
    goScreen();

    super.initState();
  }

  Future goScreen() async {
    Future.delayed(const Duration(seconds: 2)).then((Value) {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
  Future getData()async{

    var pref = await SharedPreferences.getInstance();
    pref.getString("name").toString();
    pref.getString("password").toString();

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
            child: CircularProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.grey,
              strokeWidth: 3,
            )),
      ),
    );
  }
}
