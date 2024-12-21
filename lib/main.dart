//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
      leading: IconButton(
        icon:const Icon(
          Icons.menu,
        ),
        onPressed: () {},
      ),
      title:const Text("Home"),
      actions: [
        IconButton(onPressed: () {}, icon:const Icon(Icons.shopping_cart)),
        IconButton(onPressed: () {}, icon:const Icon(Icons.search))
      ],
      elevation: 5,
      shadowColor: Colors.red,
      backgroundColor: Colors.purple,
      centerTitle: true,
      shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      foregroundColor: Colors.white,
    )),
    debugShowCheckedModeBanner: false,
  ));
}
