//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title:
            Text("Home", style: TextStyle(color: Colors.white, fontSize: 25)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shadowColor: Colors.red,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.red, width: 15),
                    bottom: BorderSide(color: Colors.blue, width: 15),
                    right: BorderSide(color: Colors.green, width: 15),
                    left: BorderSide(color: Colors.amber, width: 15)),
                color: Colors.deepPurple,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Icon(Icons.account_circle_sharp),
                  // ),
                ],
              )),
          Positioned(left: 60, top: 60, child: Icon(Icons.add_a_photo_sharp)),
          Positioned(left: 60, bottom: 60, child: Icon(Icons.ac_unit_outlined)),
          Positioned(bottom: 60, right: 60, child: Icon(Icons.access_alarm)),
          Positioned(top: 60, right: 60, child: Icon(Icons.accessible)),
        ],
      )
    );
  }
}
