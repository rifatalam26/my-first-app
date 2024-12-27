//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title:
            Text("Home", style: TextStyle(color: Colors.white, fontSize: 25)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shadowColor: Colors.red,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      // body: Stack(
      //   children: [
      //     Container(
      //         padding: EdgeInsets.all(20),
      //         margin: EdgeInsets.all(20),
      //         height: 300,
      //         width: 300,
      //         decoration: BoxDecoration(
      //           border: Border(
      //               top: BorderSide(color: Colors.red, width: 15),
      //               bottom: BorderSide(color: Colors.blue, width: 15),
      //               right: BorderSide(color: Colors.green, width: 15),
      //               left: BorderSide(color: Colors.amber, width: 15)),
      //           color: Colors.deepPurple,
      //         ),
      //         child: const Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             // Center(
      //             //   child: Icon(Icons.account_circle_sharp),
      //             // ),
      //           ],
      //         )),
      //     Positioned(left: 60, top: 60, child: Icon(Icons.add_a_photo_sharp)),
      //     Positioned(left: 60, bottom: 60, child: Icon(Icons.ac_unit_outlined)),
      //     Positioned(bottom: 60, right: 60, child: Icon(Icons.access_alarm)),
      //     Positioned(top: 60, right: 60, child: Icon(Icons.accessible)),
      //   ],
      // )
      // body: Container(
      //   width: 250,
      //   height: 250,
      //   // color: Colors.black12,
      //   margin: EdgeInsets.all(40),
      //   decoration: BoxDecoration(
      //       border: Border(
      //         top: BorderSide(color: Colors.cyanAccent, width: 30),
      //         bottom: BorderSide(color: Colors.deepPurpleAccent, width: 30),
      //         left: BorderSide(color: Colors.red, width: 30),
      //         right: BorderSide(color: Colors.green, width: 30),
      //       ),
      //       color: Colors.amberAccent),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //           bottom: 20, right: 20, child: Icon(Icons.account_circle_sharp)),
      //       Positioned(bottom: 20, left: 20, child: Icon(Icons.accessible)),
      //       Positioned(
      //           top: 20, right: 20, child: Icon(Icons.add_a_photo_sharp)),
      //       Positioned(top: 20, left: 20, child: Icon(Icons.ac_unit_outlined)),
      //       // Column(
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //       //   crossAxisAlignment: CrossAxisAlignment.center,
      //       //   children: [Center(child: Icon(Icons.access_time_filled))],
      //       // ),
      //       Center(
      //         child: IconButton(onPressed: (){},icon: const Icon(Icons.add),),
      //       )
      //     ],
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 100,
          color: Colors.blueGrey,
          //margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          child: Image.network(
              "https://cdn-icons-png.flaticon.com/512/6858/6858504.png"),
        ),
      ),
    );
  }
}
