import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  
  String name="";
  String password="";
  
  getData()async{

    var sp =await SharedPreferences.getInstance();
    
    setState(() {
      name = sp.getString("name").toString();
      password = sp.getString("password").toString();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Shaw Data",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body:  Center(
        child: Column(children: [
          Text(name,style: const TextStyle(fontSize: 30),),
          Text(password,style: const TextStyle(fontSize: 30),),
        ],),
      ),
    );
  }
}
