import 'package:flutter/material.dart';
import 'package:my_app/view/second_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: Icon(Icons.account_circle),
          title: Text("Home_Screen"),
          centerTitle: true,
          actions: [Icon(Icons.settings)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SIGN UP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30,),
              TextField(
                enabled: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(width: 2, color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.purpleAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ));
  }
}
