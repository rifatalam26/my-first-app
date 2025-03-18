import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Model/data_model.dart';
import 'package:my_app/view/Model/model_screen2.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({super.key});

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  TextEditingController nameController = TextEditingController();

  List<DataModel> l = [];
  void data() {
    l.add(DataModel(
        name: "${nameController.text.toString()}",
        roll: 10,
        dep: "${DateTime.now().toString().substring(10, 19)}"));
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
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
              ElevatedButton(
                  onPressed: () {
                    data();
                  },
                  child: Text(
                    "add data",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ModelScreen2(list: l,)));
                  },
                  child: Text(
                    "next page",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Enter name", border: OutlineInputBorder()),
                ),
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: l.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueGrey,
                      child: ListTile(
                        onLongPress: () {
                          l.removeAt(index);
                          setState(() {});
                        },
                        title: Text(
                          "${l[index].name}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${l[index].dep}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        leading: Text("${l[index].roll}"),
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
