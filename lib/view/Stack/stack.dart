import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StuckScreenState();
}

class _StuckScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Stack"),
      ),
      body: const Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.orange,
            ),
            Positioned(
              top: -30,
              right: -30,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
