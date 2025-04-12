import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Laundry service/home_screen.dart';

class LoginScreenGpt extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  LoginScreenGpt({super.key});

  void login(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Simple login check
    if (userController.text == 'admin' && passController.text == '1234') {
      await prefs.setBool('loggedIn', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: userController, decoration: InputDecoration(labelText: 'Username')),
            TextField(controller: passController, obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => login(context), child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
