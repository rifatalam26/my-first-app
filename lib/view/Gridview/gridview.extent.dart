import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewExtent extends StatefulWidget {
  const GridViewExtent({super.key});

  @override
  State<GridViewExtent> createState() => _GridViewExtentState();
}

class _GridViewExtentState extends State<GridViewExtent> {
  var arrcolor=[
    Colors.purple,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.amber,
    Colors.deepPurpleAccent,
    Colors.lightGreen,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "GridView.Extent",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "FontName"),
        ),
      ),
      body: GridView.extent(maxCrossAxisExtent: 100,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[0],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[1],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[2],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[3],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[4],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[5],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[6],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[7],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[8],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrcolor[9],),
          ),
        ],
      ),
    );
  }
}
