import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app/view/Laundry%20service/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController passwordcontroller = TextEditingController();
  bool _securetext = true;
  //late String passwordError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      AssetImage("assets/image/iPhone  15 Pro Max - 10.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                    width: 260,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "abcd",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 3, color: CupertinoColors.activeBlue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: CupertinoColors.activeBlue))),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "E-mail",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                    width: 260,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 3, color: CupertinoColors.activeBlue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: CupertinoColors.activeBlue))),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                    width: 260,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          // errorText: passwordError,
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _securetext =! _securetext;
                                });
                              },
                              icon: Icon(
                                _securetext
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.blueAccent,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 3, color: CupertinoColors.activeBlue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: CupertinoColors.activeBlue))),
                      obscureText: _securetext,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Get.to(const SignInScreen());
                  });
                },
                child: Container(
                  height: 40,
                  width: 250,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: CupertinoColors.activeBlue,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 100,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 100,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                  height: 70,
                  width: 230,
                  child: Image(image: AssetImage("assets/image/image 5.png"))),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Twitter",
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 170,
                  width: 230,
                  child: Image(image: AssetImage("assets/image/amico.png"))),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text("Sign In",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
