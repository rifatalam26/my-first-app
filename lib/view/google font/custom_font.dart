import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFontPage extends StatefulWidget {
  const CustomFontPage({super.key});

  @override
  State<CustomFontPage> createState() => _CustomFontPageState();
}

class _CustomFontPageState extends State<CustomFontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Google Font",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "F"),
        ),
      ),
      body: Center(
        child: Text(
          "This is Alam",
          style: TextStyle(fontFamily: "F"),
        ),
      ),
    );
  }
}
