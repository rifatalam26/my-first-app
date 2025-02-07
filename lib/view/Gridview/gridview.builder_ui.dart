import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewBuilderUI extends StatefulWidget {
  const GridViewBuilderUI({super.key});

  @override
  State<GridViewBuilderUI> createState() => _GridViewBuilderUIState();
}

class _GridViewBuilderUIState extends State<GridViewBuilderUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   centerTitle: true,
        //   title: Text(
        //     "GridViewBuilderUI",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "FontName"),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),prefixIcon: Icon(Icons.search,size: 30,)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 50,
                    gridDelegate:
                        //SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
                        // crossAxisSpacing: 10,mainAxisSpacing: 10)
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Center(
                          child: Text("$index"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            border: Border.all(
                                color: Colors.yellowAccent, width: 3)),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 500,
                  child: Center(
                    child: Text(
                      "Md Rifat Alam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "FontName"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.yellowAccent, width: 3)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
