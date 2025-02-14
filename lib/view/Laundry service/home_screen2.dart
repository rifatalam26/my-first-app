import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/background image5.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 40,
                          color: Colors.indigo,
                        )
                      ],
                    ),
                    Text(
                      "Blocl no.23,Saigaon,0043",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.blueAccent)),
                  child: Icon(
                    Icons.notifications,
                    size: 35,
                    color: Colors.indigo,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/image/washing mechine.png")),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Wash",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/image/dry_washing.png")),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Dry Cleaning",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/OIG 1.png")),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Iron",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Category",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage("assets/image/Rectangle 66.png"))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Daily use clothes",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "T-Shirt,Shirt,pants",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
          height: 120,
          width: 330,
          decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Container(
                  height:100,width: 100,child: Image(image: AssetImage("assets/image/image 15.png"))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Household Texttiles",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Curtains,Bedsheets,more",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ) ,
            SizedBox(height: 15,),
            Container(
          height: 120,
          width: 330,
          decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage("assets/image/image 16.png"))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Suits",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Blazer,Pants,Shirts",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
