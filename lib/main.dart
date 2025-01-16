import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/home_screen.dart';
import 'package:my_app/view/second_screen.dart';

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
  String c = "hello Developer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Appber",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [Icon(Icons.account_circle_outlined)],
          backgroundColor: Colors.indigoAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " $c",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  onChanged: (value) => setState(() {
                    c=value;
                  }),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 4))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home_screen()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
