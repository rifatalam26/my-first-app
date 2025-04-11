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
  late String finalEmail;
  @override
  void initState() {
    getData().whenComplete(() async {
      goScreen();
    });
    super.initState();
  }

  Future goScreen() async {
    Future.delayed(const Duration(seconds: 2)).then((Value) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  finalEmail == null ? const Login() : const Home()));
    });
  }

  Future getData() async {
    var pref = await SharedPreferences.getInstance();
    var obtainedEmail = pref.getString("name").toString();
    // pref.getString("password").toString();
    setState(() {
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
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
