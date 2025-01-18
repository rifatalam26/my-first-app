import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/view/second_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  String email = "mdrftlm@gmail.com";
  int password =12345;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abcd.@gmail.com",
                    suffixIcon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.lightBlue, width: 3),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 3))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "********",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.lightBlue, width: 3),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 3))),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (emailController.text==email &&
                    int.parse ( passwordController.text.toString())==password) {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => home_screen()));
                    Get.to(second_screen(email: emailController.text, password: passwordController.text,));

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("wrong information")));
                  }
                },
                child: Card(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
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




