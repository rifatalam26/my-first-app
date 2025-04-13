import 'package:flutter/material.dart';

class HomeScreenGpt extends StatefulWidget {
  const HomeScreenGpt({super.key});

  @override
  State<HomeScreenGpt> createState() => _HomeScreenGptState();
}

class _HomeScreenGptState extends State<HomeScreenGpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Home Screen",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
