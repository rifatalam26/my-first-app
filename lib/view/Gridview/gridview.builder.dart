import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  var arrcolor = [
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
          "GridView.Builder",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "FontName"),
        ),
      ),
      body: GridView.builder(
        itemCount: arrcolor.length,
        gridDelegate:
            //SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
            // crossAxisSpacing: 10,mainAxisSpacing: 10)
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: arrcolor[index],
          );
        },
      ),
    );
  }
}
