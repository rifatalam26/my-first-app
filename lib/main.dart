import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: const HomeActivity());
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int selectedIndex = 0;


  MySnackBar(massage, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        titleSpacing: 10,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("no coment", context);
              },
              icon: Icon(
                Icons.comment,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("no vide call", context);
              },
              icon: Icon(
                Icons.video_call,
                color: Colors.deepOrange,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("no audio", context);
              },
              icon: Icon(Icons.audio_file, color: Colors.blue)),
          IconButton(
              onPressed: () {
                MySnackBar("no setings", context);
              },
              icon: Icon(
                Icons.settings,
                color: Colors.green,
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          elevation: 10,
          child: Icon(
            Icons.add,
            color: Colors.blue,
          ),
          backgroundColor: Colors.green,
          // foregroundColor: Colors.black,
          onPressed: () {
            MySnackBar("I am floatingAction button", context);
          }),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // Active tab index
        selectedItemColor: Colors.blue, // Active item color
       // unselectedItemColor: Colors.grey, // Inactive item color
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            MySnackBar("I am Home menu", context);
          }
          if (index == 1) {
            MySnackBar("I am contact menu", context);
          }
          if (index == 2) {
            MySnackBar("I am profile menu", context);
          }
          setState(() {
            selectedIndex = index; // Update the selected tab index
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("RIFAT")),
            ListTile(leading :Icon(Icons.home), title: Text('Home'),),
            ListTile(leading: Icon(Icons.person), title: Text("Profile"),),
            ListTile(leading: Icon(Icons.email), title: Text("Email"),),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone"),)
          ],
        ),
      ),

      body: Text("Hello \n This is my App" ""),
    );
  }
}
