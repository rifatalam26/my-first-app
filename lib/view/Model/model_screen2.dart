import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_model.dart';

class ModelScreen2 extends StatefulWidget {
   ModelScreen2({super.key,required this.list});
  List<DataModel> ? list;
  @override
  State<ModelScreen2> createState() => _ModelScreen2State();
}

class recuired {
}

class _ModelScreen2State extends State<ModelScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Model Screen 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
