import 'package:flutter/material.dart';

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
        title: Text("Data Show",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
