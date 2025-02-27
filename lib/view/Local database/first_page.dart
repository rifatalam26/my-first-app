import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Local%20database/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter name", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  if (nameController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(
                            name: nameController.text,
                            pass: passwordController.text,
                          ),
                        ));
                  } else {
                    print(" Please Enter Something");
                  }
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
