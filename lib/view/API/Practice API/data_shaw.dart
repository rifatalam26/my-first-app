import 'package:flutter/material.dart';
import 'package:my_app/view/API/Practice%20API/class_page.dart';

class DataShaw extends StatefulWidget {
  const DataShaw({super.key});

  @override
  State<DataShaw> createState() => _DataShawState();
}

class _DataShawState extends State<DataShaw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Data Show",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: FutureBuilder(
        future: Api().data(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            return const Text("ggggfgggg");
          } else if (snapshots.hasError) {
            return const Text("Error");
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
