import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){

  runApp(const myApp());

}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(home:HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    appBar: AppBar(title: Text("My App"),),
    body: Text("Hello"),

    );
  }

}


