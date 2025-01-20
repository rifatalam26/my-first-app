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
        body: Stack(
      alignment: Alignment.topLeft,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300,
          width: 500,
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
            left: 100,
            child: Container(
              height: 200,
              width: 300,
              color: Colors.white,
            )),
      ],
    ));
  }
}
