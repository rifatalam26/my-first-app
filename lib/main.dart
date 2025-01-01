import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.purple,
        centerTitle: true,

        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        ),
      ),
      body:Card(
        color: Colors.orangeAccent,
        shape:OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.black,width: 3),
        ) ,
margin: EdgeInsets.all(30),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text("data"),
        ),
      )
    );
  }
}
