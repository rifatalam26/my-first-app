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
    var arr_names = [
      "Md: Rifat ",
      "Md Siddik",
      "Md: Abusaid",
      "Md: Alam",
      "Md: Jomil",
      "Md: Jolol",
      "Md: Julfikar",
      "Md: Rakib",
      "Ms: Shanur"
    ];
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("ListView.separated"),
          actions: [
            //  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  arr_names[index],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                );
              },
              itemCount: arr_names.length,
             // itemExtent: 100,
              separatorBuilder: (context, index) {
                return Divider(height: 50, thickness: 3);
              },
              scrollDirection: Axis.vertical,
            ),
          ),
        ));
  }
}
