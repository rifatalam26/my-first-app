import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
    canPop: false,
      onPopInvokedWithResult:(didPop, result) async {
      return(await showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              title: Text("Confirmation!"),
              content: Text("Are sure to exit this app??"),
              actions: [
                ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                ElevatedButton(onPressed: (){}, child: Text("Ok")),
              ],
            );
          }));
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter name", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
