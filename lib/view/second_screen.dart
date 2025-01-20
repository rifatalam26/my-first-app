import 'package:flutter/material.dart';

class second_screen extends StatefulWidget {
  second_screen({Key? key}) : super(key: key);

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Appber",
      //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //   ),
      //   actions: [
      //     Stack(
      //       alignment: Alignment.topRight,
      //       children: [
      //         Icon(
      //           Icons.shopping_cart,
      //           size: 25,
      //         ),
      //         CircleAvatar(
      //           radius: 5,
      //           backgroundColor: Colors.red,
      //         )
      //       ],
      //     ),
      //     SizedBox(
      //       width: 20,
      //     )
      //   ],
      //   backgroundColor: Colors.indigoAccent,
      //   foregroundColor: Colors.white,
      //   centerTitle: true,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(30),
      //           bottomRight: Radius.circular(30))),
      // ),
      // drawer: Drawer(),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 300,
                // width: 500,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.menu,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "DASHBOARD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Icon(
                      Icons.notifications_active_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: -100,
                  left: 40,
                  child: Container(
                    height: 200,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        Text(
                          "Ansh Sharma",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("SDT-12(B)"),
                        SizedBox(
                          height: 30,
                        ),
                        Text("lorsem ipsum is simply dummy text"),
                        Text("of the standard dummy")
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            height: 120,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "+091 99999990000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "anshsharma@gmail.com",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Personal Details",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 27,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Friends List",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 27,
                  color: Colors.blue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
