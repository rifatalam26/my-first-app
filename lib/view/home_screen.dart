import 'package:flutter/material.dart';
import 'package:my_app/view/second_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: Icon(Icons.account_circle),
        title: Text("Home_Screen"),
        centerTitle: true,
        actions: [Icon(Icons.settings)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Home Screen",
                    style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(radius: 30,
                    backgroundColor: Colors.green,),
                  SizedBox(height: 5,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>second_screen()));
                  }, child: Text("login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

