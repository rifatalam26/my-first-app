import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrserSuccessfulScreen extends StatefulWidget {
  const OrserSuccessfulScreen({super.key});

  @override
  State<OrserSuccessfulScreen> createState() => _OrserSuccessfulScreenState();
}

class _OrserSuccessfulScreenState extends State<OrserSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/background image8.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
            ),
            Text(
              "Order Successful",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            Text(
              "#0123456Order no.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                 ),
            ),
          ],
        ),
      ),
    );
  }
}
