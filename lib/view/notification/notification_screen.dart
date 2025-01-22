import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.menu,
                  size: 30,
                ),

                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/my_pic.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "Dont forget to complete\n your task today",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.ac_unit_outlined,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("07:45 pm")
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/fifa.jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "Your meeting start in \n fivetin minutes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.ac_unit_outlined, size: 15),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("08:05 pm")
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/image/transparent image.webp"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "New massage received.\n Top to view",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.ac_unit_outlined, size: 15),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("06:25 pm")
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/download.jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "Keep pushing forward \n you are dpoing great",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.ac_unit_outlined, size: 15),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("03:12 pm")
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/avater image.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "Let me know if you need \n specific types",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.ac_unit_outlined, size: 15),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("10:05 pm")
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        //color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/fifa.jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    "Dont forget to complete\n your task today",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.ac_unit_outlined,size: 15,),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text("07:45 pm")
                    ],
                  ),
                ]),
              ),

            ],
          ),
        ));
  }
}
