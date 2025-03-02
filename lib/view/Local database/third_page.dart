import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String myName = "alam";
  String myPass = "246";
  Future<void> getData() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    myName = (p.getString('name'))!;
    myPass = (p.getString('pass'))!;
    setState(() {
      print("My name: $myName   My pass: $myPass");
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Third Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("name:$myName"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("pass:$myPass"),
                    ],
                  ),
                )),
            // ElevatedButton(onPressed: () async {
            //   await getData();
            // },
            //     child: Text("data"))
          ],
        ),
      ),
    );
  }
}
