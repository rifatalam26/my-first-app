import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  var nameValue="No Saved Value";
  @override
  void initState() {
    getValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Shared Pref",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var name = nameController.text.toString();

                var prefs = await SharedPreferences.getInstance();
                prefs.setString("name", nameController.text.toString());
              },
              child: const Text(
                "Save",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 15,),
           Text(
            nameValue,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  void getValue()async {

    var prefs = await SharedPreferences.getInstance();

   var getName= prefs.getString("name");



   setState(() {
     nameValue=getName!;
   });
  }
}
