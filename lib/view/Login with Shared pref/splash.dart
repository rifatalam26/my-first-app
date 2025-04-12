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
String name="";

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    var pref = await SharedPreferences.getInstance();

   setState(() {

     var name=pref.getString("name").toString();
      Timer(const Duration(seconds: 2), () {
        if(name==null){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const Login()));
        }else if(name!=null){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const Home()));
        }
      });
   });

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
        SizedBox(
            child: CircularProgressIndicator(
          color: Colors.blue,
          backgroundColor: Colors.grey,
          strokeWidth: 3,
        )),
      ),
    );
  }
}
