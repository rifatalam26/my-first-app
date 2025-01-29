import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorTextPage extends StatefulWidget {
  const ColorTextPage({super.key});

  @override
  State<ColorTextPage> createState() => _ColorTextPageState();
}

class _ColorTextPageState extends State<ColorTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Colors Check",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.orange,
                title: Text("Flutter--------$index"),
              ),
            );
          }),
    );
  }
}
