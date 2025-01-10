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
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("Massenger demo"),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 30,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueGrey,
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 30,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                    ),
                    title: Text(
                      "Md Rifat Alam",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Flutter App developer"),
                  );
                },
              )
            ],
          ),
        )
        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SizedBox(
        //           height: 100,
        //           child: ListView.builder(
        //               itemCount: 30,
        //               scrollDirection: Axis.horizontal,
        //               itemBuilder: (context, index) {
        //                 return Padding(
        //                   padding: const EdgeInsets.all(5.0),
        //                   child: CircleAvatar(
        //                     // backgroundImage:
        //                     //     AssetImage("assets/images/my picture.jpg"),
        //                     radius: 30,
        //                     backgroundColor: Colors.blueGrey,
        //                   ),
        //                 );
        //               })),
        //       ListView.builder(
        //           physics: BouncingScrollPhysics(),
        //           shrinkWrap: true,
        //           itemCount: 30,
        //           scrollDirection: Axis.vertical,
        //           itemBuilder: (context, index) {
        //             return ListTile(
        //               leading: CircleAvatar(
        //                 // backgroundImage:
        //                 //     AssetImage("assets/images/my picture.jpg"),
        //                 radius: 30,
        //                 backgroundColor: Colors.blueGrey,
        //               ),
        //               title: Text(
        //                 "Rifat Alam",
        //                 style: TextStyle(
        //                     fontSize: 20, fontWeight: FontWeight.w500),
        //               ),
        //               subtitle: Text("Flutter App Developer"),
        //             );
        //           }),
        //     ],
        //   ),
        // )
        );
  }
}
