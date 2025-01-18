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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.account_circle_outlined),
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
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Center(
              child: Card(
                  color: Colors.blueGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text("Index :$index"),
                  )),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
