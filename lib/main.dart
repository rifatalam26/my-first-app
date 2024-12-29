//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shadowColor: Colors.red,
        elevation: 5,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      // body: Padding(
      //     padding: EdgeInsets.all(8),
      //     child: Column(
      //       children: [
      //         Container(
      //           height: 100,
      //           // color: Color(0xff4c5885),
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   fit: BoxFit.fill,
      //                   filterQuality: FilterQuality.high,
      //                   image: AssetImage(
      //                       "images/Screenshot_2024-02-22-21-26-05-74.jpg"))),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Column(children: [
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //                 child: Image.asset(
      //                     "images/Screenshot_2024-02-22-21-26-05-74.jpg"),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               )
      //             ]),
      //             Column(children: [
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               )
      //             ]),
      //             Column(children: [
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 color: Color(0xff4c5885),
      //               ),
      //             ]),
      //           ],
      //         )
      //       ],
      //     )),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
      child:Center(
        child: TextField(
         // keyboardType: TextInputType.multiline,

          decoration: InputDecoration(
           // border: InputBorder.none,
            labelText: "First Name",
            filled: true,
            fillColor: Colors.blueGrey,
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )
          ),
        ),
      ),

      ),
    );
  }
}
