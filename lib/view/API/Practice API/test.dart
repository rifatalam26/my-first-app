import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "API Practice",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Get Data",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
