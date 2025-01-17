import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/view/second_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.account_circle_outlined),
        title: Text("Home Screen"),
        actions: [Icon(Icons.menu_open)],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => second_screen()));
             Get.to(second_screen());
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
