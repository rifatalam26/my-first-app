import 'package:flutter/material.dart';
import 'package:my_app/view/API/api_call.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "API",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ApiCall().countryData();
            },
            child: const Text(
              "Get Data",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
