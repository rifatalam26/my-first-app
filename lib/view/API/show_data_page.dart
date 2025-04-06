import 'package:flutter/material.dart';
import 'package:my_app/view/API/api_call.dart';

class ShowDataPage extends StatefulWidget {
  const ShowDataPage({super.key});

  @override
  State<ShowDataPage> createState() => _ShowDataPageState();
}

class _ShowDataPageState extends State<ShowDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Show Data Page",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:FutureBuilder(
          future: ApiCall().joksData(),
          builder: (context,snapshots){
          if(snapshots.hasData){
            return const Text("data");
          }else if(snapshots.hasError){
            return const Text("Has Error");
          }else{
            return const CircularProgressIndicator();
          }
        }, )
      ),
    );
  }
}
