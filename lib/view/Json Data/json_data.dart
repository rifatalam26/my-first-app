import 'package:flutter/material.dart';

class JsonData extends StatefulWidget {
  const JsonData({super.key});

  @override
  State<JsonData> createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  Map<String,Map<String,dynamic>> map ={
    "employ": {
      "name" :"Rifat",
      "roll" :122,
      "city" :"dhaka"
    }
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), 
      body: Text("$map"),
    );
  }
}
