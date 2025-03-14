import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for SystemNavigator.pop
import 'dart:io'; // Import for exit(0)

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  Future<bool> _onWillPop() async {
    bool shouldExit = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Are you sure! you want to exit this app?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, false); // Stay in app
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true); // Exit app
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    ) ??
        false;

    if (shouldExit) {
      if (Platform.isAndroid) {
        SystemNavigator.pop(); // Close app on Android
      } else if (Platform.isIOS) {
        exit(0); // Force close on iOS (not recommended for Apple guidelines)
      }
    }

    return false; // Prevents default back navigation
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        _onWillPop();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}