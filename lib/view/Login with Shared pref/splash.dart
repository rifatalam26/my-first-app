import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/home.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashScreen2State();
}
class _SplashScreen2State extends State<Splash> {
  // bool isLoggedIn=false;
  @override
  void initState() {
    getData();
    super.initState();
  }
  getData() async {
    var pref = await SharedPreferences.getInstance();
    bool? loggedIn = pref.getBool("loggedIn");
    Timer(const Duration(seconds: 2), () {
      if (loggedIn != null && loggedIn) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Home()));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Login()));
      }
    });
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
