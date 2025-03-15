import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Model/model_pac.dart';

class ModelPracScreen extends StatefulWidget {
  const ModelPracScreen({super.key});

  @override
  State<ModelPracScreen> createState() => _ModelPracScreenState();
}

class _ModelPracScreenState extends State<ModelPracScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController dipController=TextEditingController();
  List<ModelPRAC> l = [];

  void data() {
    l.add(ModelPRAC(name: "${nameController.text}", dip: "${dipController.text}", roll: 26, semis: "second"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Model Practice Screen",
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
                  controller: nameController,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: dipController,
                  decoration: InputDecoration(
                      hintText: "dip", border: OutlineInputBorder()),
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
                        onLongPress: (){
                          l.removeAt(index);
                          setState(() {

                          });
                        },
                        leading: Text("${l[index].roll}"),
                        title: Text("${l[index].name}"),
                        subtitle: Text("${l[index].dip}"),
                        trailing: Text("${l[index].semis}"),
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
