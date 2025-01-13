import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  const second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          leading: Icon(Icons.account_circle_outlined),
          title: Text(
            "Second Screen",
          ),
          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("counter : 0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: (){}, child: Text("count",style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
        )
    );
  }
}
