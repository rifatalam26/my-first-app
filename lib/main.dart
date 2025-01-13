import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/home_screen.dart';

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
        // leading: Icon(Icons.account_circle),
        title: Text("Appbar"),
        actions: [Icon(Icons.settings)],
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          width: 250,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                    ),
                    Text(
                      "Drayer Heder",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100)),
                    color: Colors.greenAccent),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.greenAccent,
                  size: 40,
                ),
                title: Text(
                  "Setings",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Divider(
                height: 1.5,
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.greenAccent,
                  size: 40,
                ),
                title: Text(
                  "Person",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Divider(
                height: 1.5,
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.greenAccent,
                  size: 40,
                ),
                title: Text(
                  "Account_box",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Divider(
                height: 1.5,
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.greenAccent,
                  size: 40,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Divider(
                height: 1.5,
                color: Colors.white,
              ),
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home_screen()));
                },
                child: Text("Next")),
            SizedBox(height: 10,),
            Text(
              "counter : 0",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "count",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
