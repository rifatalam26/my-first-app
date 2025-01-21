import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
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
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
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
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(Icons.ac_unit_outlined),
                    ],
                  ),
             ] ),
            ),
          ],
        ));
  }
}
