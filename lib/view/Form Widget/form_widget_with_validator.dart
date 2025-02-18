import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidgetWithValidator extends StatefulWidget {
  const FormWidgetWithValidator({super.key});

  @override
  State<FormWidgetWithValidator> createState() =>
      _FormWidgetWithValidatorState();
}

class _FormWidgetWithValidatorState extends State<FormWidgetWithValidator> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "FormWidgetWithValidator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: "email''",
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
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              return value!.isEmpty ? "enter email" : null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              return value!.isEmpty ? "enter password" : null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            // onTap: submitForm,
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
      )),
    );
  }
}
