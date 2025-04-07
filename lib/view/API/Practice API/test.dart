import 'package:flutter/material.dart';
import 'package:my_app/view/API/Practice%20API/class_page.dart';
import 'package:my_app/view/API/Practice%20API/data_shaw.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "API Practice",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              api().Data();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DataShaw()));
            },
            child: Text(
              "Get Data",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
