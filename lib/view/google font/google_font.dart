import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoogleFontScreen extends StatefulWidget {
  const GoogleFontScreen({super.key});

  @override
  State<GoogleFontScreen> createState() => _GoogleFontScreenState();
}

class _GoogleFontScreenState extends State<GoogleFontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "Google Font",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "FontName"),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            color: Colors.grey,
            child: Text(""),
          )
        ],
      ),
    );
  }
}
