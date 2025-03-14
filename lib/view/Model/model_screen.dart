import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Model/data_model.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({super.key});

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  List<DataModel> l = [];
  void data() {
    l.add(DataModel(name: "Rifat", roll: 10, dep: "CST"));
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Model Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
               data();
              },
                  child: Text("add data")),
              Card(
                color: Colors.blueGrey,
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: l.length,
                    itemBuilder: (context,index){
                  return ListTile(
                    title: Text("${l[index].name}"),
                    subtitle: Text("${l[index].dep}"),
                    leading: Text("${l[index].roll}"),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
