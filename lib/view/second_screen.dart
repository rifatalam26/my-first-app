import 'package:flutter/material.dart';

class second_screen extends StatefulWidget {
  second_screen({Key? key, required this.email, required this.password})
      : super(key: key);
  String? email;
  String? password;

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Appber",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                )
              ],
            ),
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: Colors.indigoAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        drawer: Drawer(),
        body: Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Card(
                color: Colors.orange,
                child: SizedBox(
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}
