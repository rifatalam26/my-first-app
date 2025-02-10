import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class ShoppingUiDisigne extends StatefulWidget {
  const ShoppingUiDisigne({super.key});

  @override
  State<ShoppingUiDisigne> createState() => _ShoppingUiDisigneState();
}

class _ShoppingUiDisigneState extends State<ShoppingUiDisigne> {
  var index = 2;
  var items = <Widget>[
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.favorite,
      size: 30,
    ),
    Icon(
      Icons.account_circle,
      size: 30,
    ),
    Icon(
      Icons.settings,
      size: 30,
    ),
    Icon(
      Icons.search,
      size: 30,
    ),
  ];

  CircularBottomNavigationController navigationController =
      CircularBottomNavigationController(selectedPos);
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.orange,
        labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, "Reports", Colors.red,
        circleStrokeColor: Colors.black),
    TabItem(Icons.notifications, "Notifications", Colors.cyan),
  ]);

  // int index = 0;
  List<IconData> iconlist = [
    Icons.home,
    Icons.shopping_bag,
    Icons.search,
    Icons.settings,
  ];
  List images = [
    "assets/image/shoes image.webp",
    "assets/image/dresh image.jpg",
    "assets/image/sun glass image.png",
    "assets/image/shoes image.webp",
    "assets/image/dresh image.jpg",
    "assets/image/sun glass image.png",
  ];

  static int? get selectedPos => null;

  //static int? get selectedPos => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: Colors.teal.shade200,
        body: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/image/Person Icon.png",
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Name",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Lorem Name",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      // alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.notifications_none,
                              size: 50,
                              color: Colors.orange,
                            )
                            // Image.asset(
                            //   "assets/image/Notification Icon.png",
                            //   //color: Colors.orange,
                            // ),
                            ),
                        Positioned(
                          top: -5,
                          right: -5,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total:",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("5437",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      primary: false,
                      // physics: const (),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),

                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                      "assets/image/Gallery icon.webp",
                                      fit: BoxFit.cover),
                                ),
                                //child: Icon(Icons.gallery),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LOREM IPSUM",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Lorem ipsum dolor"),
                                Text("sit amet"),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 60,
                                      child: Center(
                                        child: Text(
                                          "BUY",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Text(
                                      "245",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        );
                      }),
                ),
                Text(
                  "LOREM IPSUM DOLOR SIT",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          images[index],
                          width: 120,
                        );
                      }),
                ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: Container(
                //           height: 100,
                //           width: 100,
                //           decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(15)),
                //           child: Column(
                //             children: [
                //               Image.asset("assets/image/shoes image.webp"),
                //               // Text("LOREM",style: TextStyle(fontWeight: FontWeight.bold),)
                //             ],
                //           )),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: Container(
                //         height: 100,
                //         width: 80,
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(15)),
                //         child: Column(
                //           children: [
                //             Image.asset("assets/image/dresh image.jpg"),
                //             // Text("LOREM",style: TextStyle(fontWeight: FontWeight.bold),)
                //           ],
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: Container(
                //         height: 100,
                //         width: 80,
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(15)),
                //         child: Column(
                //           children: [
                //             Image.asset("assets/image/sun glass image.png"),
                //             // Text("LOREM",style: TextStyle(fontWeight: FontWeight.bold),)
                //           ],
                //         ),
                //       ),
                //     ),
                //     // AnimatedBottomNavigationBar(
                //     //     inactiveColor: Colors.white,
                //     //     activeColor: Colors.orange,
                //     //     icons: iconlist,
                //     //     activeIndex: index,
                //     //     onTap: (i){
                //     //       setState(() {
                //     //         index=i;
                //     //       });
                //     //     }
                //     // )
                //   ],
                // ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: AnimatedBottomNavigationBar(
        //     inactiveColor: Colors.grey,
        //     activeColor: Colors.orange,
        //     backgroundColor: Colors.white,
        //     gapLocation: GapLocation.none,
        //     icons: iconlist,
        //     activeIndex: index,
        //     onTap: (i) {
        //       setState(() {
        //         index = i;
        //       });
        //     }),
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.orange,
          color: Colors.white,
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 300),
          height: 60,
          index: index,
          items: items,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
        ),
      ),
    );
  }
}
