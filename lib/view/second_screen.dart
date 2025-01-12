import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  const second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: Icon(Icons.account_circle_outlined),
        title: Text(
          "Second Screen",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello Brooo",
          style: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
