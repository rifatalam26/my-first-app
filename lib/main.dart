import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,

        home:const HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    appBar: AppBar(
      title: Text("My App"),
      titleSpacing: 10,
      //centerTitle: true,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      backgroundColor: Colors.amber,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.comment))
      ],

    ),
    body: Text("Hello \n This is my App"""),


    );
  }

}


