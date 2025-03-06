import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter name", border: OutlineInputBorder()),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter password", border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
