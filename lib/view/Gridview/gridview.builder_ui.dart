import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.yellowAccent, width: 2),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.yellowAccent, width: 2),
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 100,
              //     width: 500,
              //     child: Center(
              //       child: Text(
              //         "Md Rifat Alam",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25,
              //             fontFamily: "FontName"),
              //       ),
              //     ),
              //     decoration: BoxDecoration(
              //         color: Colors.cyan,
              //         border: Border.all(color: Colors.yellowAccent, width: 3)),
              //   ),
              // ),
              SizedBox(
                height:100,
                width: double.infinity,
                child: CarouselSlider(
                    items: [
                      Image.network(
                          "https://marketingweek.imgix.net/content/uploads/2016/07/29160619/internet-ad.png"),
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0HvAKzyg3o-LEUV-X702v_bAqMR8uAgwwSQ&s"),
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQlQgBYHc-oK1CtI_SeIkYNHT0UWkIaPLQCQ&s"),
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOknol9nRFtMWUZL1P9e6doSf7FMHNTqXM4gDkm7RyEZEsGSEE7j_5e34c-bcHcZ0fgQE&usqp=CAU"),
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwfqWaTQAcRg52Gu0TbpQQJ99qNc75Is-ZjQ&s"),
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRepqXJOe1XyqbdHfeJrXICrjevdUv3jsasfQKV1VEgtxmw-6OxRriD4zbNiHlQ6KDagw&usqp=CAU"),
                    ],
                    options:
                    CarouselOptions(autoPlay: true,
                        disableCenter: false,
                        //enlargeCenterPage: true,
                        autoPlayInterval: Duration(seconds: 2,)
                    )),
              ),
              SizedBox(
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 50,
                    gridDelegate:
                        //SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
                        // crossAxisSpacing: 10,mainAxisSpacing: 10)
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
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
