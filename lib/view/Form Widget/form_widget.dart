import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Laundry service/location_screen.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void submitForm(){
    if(formkey.currentState!.validate()){}
  }

  String? validateEmail(value){
    if(value!.isEmpty){
      return "please enter an email";
    }
    RegExp emailRegExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return "please enter a valid email";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formkey,
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: SizedBox(
            height: 40,
            width: 260,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "username''",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue))),
              validator: (value){
                if(value!.isEmpty){
                  return "please enter a username";
                }return null;
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: SizedBox(
            height: 40,
            width: 260,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "e-mail''",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue))),
              validator: validateEmail,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: SizedBox(
            height: 40,
            width: 260,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "password''",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 3, color: CupertinoColors.activeBlue))),
            ),
          ),
        ),
        GestureDetector(
          onTap: submitForm,
          child: Container(
            height: 40,
            width: 250,
            child: Center(
              child: Text(
                "Log in",
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
      ],
    )));
  }
}
