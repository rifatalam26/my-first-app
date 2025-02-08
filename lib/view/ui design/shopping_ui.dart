import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingUiDisigne extends StatefulWidget {
  const ShoppingUiDisigne({super.key});

  @override
  State<ShoppingUiDisigne> createState() => _ShoppingUiDisigneState();
}

class _ShoppingUiDisigneState extends State<ShoppingUiDisigne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: Colors.teal.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.black,
                      child: Positioned(
                        right: -2,
                        top: 0,
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
            Row(
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
                      child: Image.asset("assets/image/Gallery icon.webp",
                          fit: BoxFit.cover),
                    ),
                    //child: Icon(Icons.gallery),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LOREM IPSUM",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
                              borderRadius: BorderRadius.circular(13)),
                        ),
                        SizedBox(width: 60,),
                        Text(
                          "245",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
