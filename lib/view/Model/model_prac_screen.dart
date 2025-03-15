import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Model/model_pac.dart';

class ModelPracScreen extends StatefulWidget {
  const ModelPracScreen({super.key});

  @override
  State<ModelPracScreen> createState() => _ModelPracScreenState();
}

class _ModelPracScreenState extends State<ModelPracScreen> {
  List<ModelPRAC> l = [];

  void data() {
    l.add(ModelPRAC(name: "Rifat", dip: "CST", roll: 26, semis: "second"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Model Prack Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "name", border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    data();
                    setState(() {});
                  },
                  child: Text("add name")),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: l.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueGrey,
                      child: ListTile(
                        leading: Text(""),
                        title: Text(""),
                        subtitle: Text(""),
                        trailing: Text(""),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
