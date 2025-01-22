import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Divider Example')),
        body: Column(
          children: [
            Text('Item 1'),
            Divider(color: Colors.grey, thickness: 1),
            Text('Item 2'),
            Divider(color: Colors.blue, thickness: 2),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}
