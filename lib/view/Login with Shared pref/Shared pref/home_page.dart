import 'package:flutter/material.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/Shared%20pref/show_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.only(left: 50,right: 50),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () async {

                var prefs = await SharedPreferences.getInstance();
                prefs.setString("name", nameController.text);
                prefs.setString("password", passwordController.text);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const ShowData()));
              },
              child: const Text(
                "Save",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
