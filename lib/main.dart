import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu,color: Colors.blue,),
      title: Text("Home"),
      elevation: 0,
      shadowColor: Colors.red,
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          actions: [Icon(Icons.shopping_cart),
          Icon(Icons.search)],
    )),
  ));
}
