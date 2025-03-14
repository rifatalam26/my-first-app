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
    l.add(DataModel(
        name: "Rifat",
        roll: 10,
        dep: "${DateTime.now().toString().substring(10, 19)}"));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  child: Text("add data",style: TextStyle(fontWeight: FontWeight.bold),)),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                shadowColor: Colors.black,
                color: Colors.blueGrey,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: l.length,
                    itemBuilder: (context, index) {
                      return ListTile(
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
