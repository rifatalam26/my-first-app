import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _BusAppUiScreenState();
}

class _BusAppUiScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
    body: Container(
        height: 900,
        width: 500,
        child: Image.asset("assets/image/iPhone 14 & 15 Pro Max - 10.png"))
      ,
    );
  }
}
